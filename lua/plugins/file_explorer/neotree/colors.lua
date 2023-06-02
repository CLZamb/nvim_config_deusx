local colors = require("ui.colors").get()
local M = {}

local fg_colors = {
  NeoTreeDirectoryName = colors.blue,
  NeoTreeExpander = colors.teal,
  NeoTreeTabActive =  colors.white,
  NeoTreeTabInactive = colors.white,
  NeoTreeTabSeparatorInactive = colors.white,
  NeoTreeTabSeparatorActive = colors.white,
  NeoTreeFocus = colors.red,
}

local bg = "#272932"

local bg_colors = {
  NeoTreeTabActive = bg,
  NeoTreeNormal = bg,
  NeoTreeNormalNC =  bg,
  NeoTreeEndOfBuffer = bg,
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

