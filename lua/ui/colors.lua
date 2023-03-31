local M = {}

M.colors = {
  white        = "#abb2bf",
  darker_black = "#1b1f27",
  black        = "#1e222a", --  nvim bg
  black2 = "#252931",
  -- one_bg = "1e222a", -- real bg of onedark
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#30343c",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  window_line_fg = "#42464e",
  light_grey = "#6f737b",
  red = "#d47d85",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#272932", -- for lines like vertsplit
  green = "#A3BE8C",
  vibrant_green = "#7eca9c",
  nord_blue = "#81A1C1",
  blue = "#61afef",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#b4bbc8",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  statusline_bg = "#22262e",
  lightbg = "#2d3139",
  lightbg2 = "#262a32",
  pmenu_bg = "#A3BE8C",
  folder_bg = "#61afef",
  noice_bg = "#30343c",
  noice_fg = "#30343c",
  which_key_bg = "#272932",
  float_bg = "#2a2c36",
  winseparator_fg = "#2b2d37",
  purple_method = "#d38aea",
  grey_menu = "#7f8490",
  background_nvimtree = "#282a33",
  telescope_background = "#2d3139",
  telescope_prompt_normal = "#262a32",
  telescope_prompt_title = "#2e3139",
  telescopePreviewTitle = "#21242c",
  telescopeResultsTitle = "#21242c",
}

M.get = function()
  return M.colors
end

return M
