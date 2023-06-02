local colors = require("ui.colors").get()
local M = {}

local fg_colors = {
  tab_selected = colors.grey,
  tab = colors.white,
  tab_close =  colors.red,
  close_button_selected = colors.red,
  modified = colors.grey_fg,
  modified_selected = colors.green,
  separator = colors.line,
  indicator_selected = colors.blue,
}

local bg_colors = {
  tab_selected = colors.blue,
  tab = colors.grey,
  separator = colors.line,
  indicator_selected = colors.line,
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

