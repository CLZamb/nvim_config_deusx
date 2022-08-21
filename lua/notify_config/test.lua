local M = {}

local notify = require("notify")
M.notify_lsp_server = function()
  if next(vim.lsp.buf_get_clients()) ~= nil then
    local providers = require('feline.providers')
    local lsp_name, icon = providers.lsp_client_names({});
    local new_icon = string.len(lsp_name) > 0 and icon or ''
    local name = new_icon .. lsp_name or ' '
    -- notify(name, "info").close()
    notify(name, "info", {
      title = "LSP Server",
    })
  else
    notify("    LSP", "info", {
      title = "LSP Server",
    })
  end
end

return M
