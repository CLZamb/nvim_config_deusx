local color = require("ui.colors").get()

local M = {}

local fg_colors = {
  TelescopeBorder = color.blue,
  TelescopePromptNormal = color.blue,
  TelescopePreviewTitle =  color.dark_purple,
  TelescopePromptTitle = color.blue,
  TelescopeResultsTitle = color.red,
}

local bg_colors = {
  TelescopePromptNormal = color.one_bg,
  TelescopePreviewTitle =  color.one_bg,
  TelescopePromptTitle = color.one_bg,
  TelescopeResultsTitle = color.one_bg,
  TelescopeSelection = color.one_bg2,
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

