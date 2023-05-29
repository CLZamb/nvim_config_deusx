local M = {}

local colors = {
  white = "#abb2bf",
  black  = "#1e222a", --  nvim bg
  black2 = "#252931",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#30343c",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  red = "#d47d85",
  pink = "#ff75a0",
  line = "#272932", -- for lines like vertsplit
  green = "#A3BE8C",
  nord_blue = "#81A1C1",
  blue = "#61afef",
  yellow = "#e7c787",
  purple = "#b4bbc8",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  float_bg = "#2a2c36",
  lightbg2 = "#262a32",
  lightbg = "#2d3139",
}

M.get = function()
  return colors
end

return M
