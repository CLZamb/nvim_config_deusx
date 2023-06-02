local colors = require("ui.colors").get()
local M = {}

local lualine_colors = {
  bg = "#22262e",
  fg = colors.black,

  -- section a
  icon_fg = colors.black2,

  separator_section_a_fg = colors.lightbg,
  separator_section_a_bg = colors.grey,

  directory_fg = colors.grey_fg2,
  directory_bg = colors.lightbg,

  diagnostic_bg = colors.lightbg2,

  -- section b
  server_name_fg = colors.green,
  overseer_fg = colors.blue,

  -- section y
  diff_bg = colors.lightbg2,

  branch_bg = colors.lightbg2,
  branch_fg = colors.green,

  file_format = colors.black,
  progress = colors.lightbg,

  -- section z
  location = colors.black2,
}

local mode_colors = {
  ["n"] = { "NORMAL", colors.red },
  ["no"] = { "N-PENDING", colors.red },
  ["i"] = { "INSERT", colors.dark_purple },
  ["ic"] = { "INSERT", colors.dark_purple },
  ["t"] = { "TERMINAL", colors.green },
  ["v"] = { "VISUAL", colors.cyan },
  ["V"] = { "V-LINE", colors.cyan },
  [""] = { "V-BLOCK", colors.cyan },
  ["R"] = { "REPLACE", colors.orange },
  ["Rv"] = { "V-REPLACE", colors.orange },
  ["s"] = { "SELECT", colors.nord_blue },
  ["S"] = { "S-LINE", colors.nord_blue },
  [""] = { "S-BLOCK", colors.nord_blue },
  ["c"] = { "COMMAND", colors.pink },
  ["cv"] = { "COMMAND", colors.pink },
  ["ce"] = { "COMMAND", colors.pink },
  ["r"] = { "PROMPT", colors.teal },
  ["rm"] = { "MORE", colors.teal },
  ["r?"] = { "CONFIRM", colors.teal },
  ["!"] = { "SHELL", colors.green },
}

M.get = function()
  return lualine_colors
end

M.get_mode_colors = function()
  return mode_colors
end

return M
