local colors = require("ui.colors").get()
local M = {}

local fg_colors = {
  DiffAdd = colors.nord_blue,
  DiffChange = colors.grey_fg,
  DiffModified = colors.nord_blue
}

local bg_colors = {
  DiffAdd = "none",
  DiffChange = "none",
  DiffModified = "none"
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

