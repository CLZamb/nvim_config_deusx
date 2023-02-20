local notify = vim.notify
local utils = require('config.lsp.lsp_notif_utils')
local severity = {
  "error",
  "warn",
  "info",
  "info", -- map both hint and info to info?
}

vim.lsp.handlers["$/progress"] = function(_, result, ctx)
  local val = result.value
  local kind = val.kind

  if not kind then
    return
  end

  local client = vim.lsp.get_client_by_id(ctx.client_id)

  -- ignore sumneko_lua spamming Diagnosing notifications
  if client.name == "lua_ls" then
    if val.title == "Diagnosing workspace" then
      return
    end

  end

  local notif_data = utils.get_notif_data(ctx.client_id, result.token)

  if kind == "begin" then
    notif_data.spinner = 1
    notif_data.notification = utils.begin_notification(val, notif_data)
    utils.update_spinner(notif_data.client_id, result.token)

  elseif kind == "report" and notif_data then
    notif_data.notification = utils.report_notification(val, notif_data)

  elseif kind == "end" and notif_data then
    notif_data.notification = utils.end_notification(val, notif_data)
    notif_data.spinner = nil

  end
end

vim.lsp.handlers["window/showMessage"] = function(_, method, params, _)
  notify(method.message, severity[params.type], { title = "LSP Message" })
end

return {
  setup = function(opts)
    opts = opts or {}

    if opts.notify then
      notify = opts.notify
    end
  end
}
