local hi = require('ui.highlights_util')
local colors = require("ui.colors").get()

local window_line_fg = "#42464e"

local cmd = vim.cmd
cmd"hi clear CursorLine"
-- Line number
hi.fg("cursorlinenr", colors.white)

-- same it bg, so it doesn't appear
hi.fg("EndOfBuffer", colors.one_bg)

-- For floating windows
hi.fg_bg("FloatBorder", colors.grey_fg, colors.float_bg)
hi.bg("NormalFloat", colors.float_bg)

hi.fg("LineNr", colors.grey)
hi.fg("NvimInternalError", colors.line)
hi.fg_bg("VertSplit", colors.line, colors.line)

-- Terminal build in
hi.bg("TermCursor", colors.green)
hi.bg("TermCursorNC", colors.red)

-- window highligh
hi.fg_bg("WinSeparator", window_line_fg, "none")
