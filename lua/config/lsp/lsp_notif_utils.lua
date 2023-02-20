local M = {}
local notify = vim.notify

-- local spinner_frames = { "⣾", "⣽", "⣻", "⢿", "⡿", "⣟", "⣯", "⣷" }
local spinner_frames ={
  " ", " ", " ", " ", " ", " ", " ", " ", " ",
  " ", " ", " ", " ", " ", " ", " ", " ", " ",
  " ", " ", " ", " ", " ", " ", " ", " ", " ",
  " "
}

local client_notifs = {}

M.get_notif_data = function(client_id, token)
  if not client_notifs[client_id] then
    client_notifs[client_id] = {}
  end

  if not client_notifs[client_id][token] then
    client_notifs[client_id][token] = {}
  end

  client_notifs[client_id][token].client_id = client_id
  return client_notifs[client_id][token]
end

M.update_spinner = function(client_id, token)
  local notif_data = M.get_notif_data(client_id, token)

  if not notif_data.spinner then
    return
  end

  notif_data.spinner = (notif_data.spinner + 1) % #spinner_frames

  notif_data.notification = notify(nil, nil, {
      hide_from_history = true,
      icon = spinner_frames[notif_data.spinner],
      replace = notif_data.notification,
    }
  )

  vim.defer_fn(function()
    M.update_spinner(client_id, token)
  end, 100)
end

M.format_title = function(title, client_id)
  local client_name = vim.lsp.get_client_by_id(client_id).name
  return client_name .. (#title > 0 and ": " .. title or "LSP Status")
end

M.format_percentage = function(message, percentage)
  return (percentage and percentage .. "%\t" or "") .. (message or "")
end

M.format_complete = function(message)
  return message and M.format_percentage(message) or "Complete"
end

local msg = ''
local opts = {}
local severity = {
  "error",
  "warn",
  "info",
  "info", -- map both hint and info to info?
}
local info_level = severity["info"]

M.begin_notification = function(val, notif_data)
  msg = val.message or "Loading..."
  opts = {
    title = M.format_title(val.title, notif_data.client_id),
    timeout = false,
    hide_from_history = false,
  }

  return notify(msg, info_level, opts)
end

M.report_notification = function(val, notif_data)
  msg = M.format_percentage(val.message, val.percentage)
  opts = {
    replace = notif_data.notification,
    hide_from_history = false,
  }

  return notify(msg, info_level, opts)
end

M.end_notification = function(val, notif_data)
  msg = M.format_complete(val.message)
  opts = {
    icon = "",
    replace = notif_data.notification,
    timeout = 1000
  }

  return notify(msg, info_level, opts)
end

return M
