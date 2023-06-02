local M = {}

local fg_colors = {
  LspInlayHint = "#777d86",
}

local bg_colors = {
  LspInlayHint = "#2d313b",
}

M.get_fg = function()
  return fg_colors
end

M.get_bg = function()
  return bg_colors
end

return M

