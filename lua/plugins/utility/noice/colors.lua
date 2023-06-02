local M = {}

local fg_colors = {
  NoiceCmdlinePopupBorder = "#30343c"
}

local bg_colors = {
  NoiceCmdlinePopupBorder = "#30343c",
  NoiceCmdlinePopup = "#30343c",
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

