local highlights = require('ui.highlights_util')
local colors = require("ui.colors").get()

local cmd = vim.cmd
cmd("hi clear CursorLine")

local fg_colors = {
  cursorlinenr = colors.white,
  EndOfBuffer = colors.one_bg,
  LineNr = colors.grey,
  NvimInternalError = colors.line,
}

local bg_colors = {
  NormalFloat = colors.float_bg,
  TermCursor = colors.green,
  TermCursorNC = colors.red,
}

local fg_bg_colors = {
  FloatBorder = { colors.grey_fg, colors.float_bg },
  VertSplit = { colors.line, colors.line },
  WinSeparator = { "#42464e" , "none" },
}

highlights.fg_groups(fg_colors)
highlights.bg_groups(bg_colors)
highlights.fg_bg_groups(fg_bg_colors)
