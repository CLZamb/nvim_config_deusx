local colors = require("ui.colors").get()
local M = {}

M.colors = {
  bg = "#22262e",
  fg = colors.black,

  normal = colors.red,
  n_pendind = colors.red,
  insert = colors.dark_purple,
  insert_c = colors.dark_purple,
  terminal = colors.green,
  visual = colors.cyan,
  visual_line = colors.cyan,
  visual_block = colors.cyan,
  replace = colors.orange,
  v_replace = colors.orange,
  select = colors.nord_blue,
  s_line = colors.nord_blue,
  s_block = colors.nord_blue,
  command = colors.pink,
  command_v = colors.pink,
  command_e = colors.pink,
  prompt = colors.teal,
  more = colors.teal,
  confirm = colors.teal,
  shell = colors.green,

  icon_fg = colors.black2,

  separator_section_a_fg = colors.lightbg,
  separator_section_a_bg = colors.grey,

  directory_fg = colors.grey_fg2,
  directory_bg = colors.lightbg,

  diagnostic_bg = colors.lightbg2,

  server_name_fg = colors.green,
  overseer_fg = colors.blue,
  diff_bg = colors.lightbg2,

  branch_bg = colors.lightbg2,
  branch_fg = colors.green,

  file_format = colors.black,
  progress = colors.lightbg,
  location = colors.black2,
}

M.get = function()
  return M.colors
end

return M
