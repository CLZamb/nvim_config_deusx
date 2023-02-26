local cmd = vim.cmd

local colors = require("ui.colors").get()

-- local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local noice_bg = colors.noice_bg
local noice_fg = colors.noice_fg
local endofbufferfg = one_bg
local float_bg = colors.float_bg
local grey_menu = colors.grey_menu
local purple_method = colors.purple_method
local window_line_fg = colors.window_line_fg

local bg = function(group, col)
   cmd("hi " .. group .. " guibg=" .. col)
end

-- Define fg color
-- @param group Group
-- @param color Color
local fg = function(group, col)
   cmd("hi " .. group .. " guifg=" .. col)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
local fg_bg = function(group, fgcol, bgcol)
   cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Disable cusror line
cmd"hi clear CursorLine"
-- Line number
fg("cursorlinenr", white)

-- same it bg, so it doesn't appear
fg("EndOfBuffer", endofbufferfg)

-- For floating windows
fg_bg("FloatBorder", blue, float_bg)
bg("NormalFloat", float_bg)

-- misc
-- inactive statuslines as thin lines
-- fg_bg("StatusLineNC", '#333644', "#333644")
-- fg_bg("StatusLine", '#333644', "#333644")

fg("LineNr", grey)
fg("NvimInternalError", line)
fg_bg("VertSplit", line, line)

-- [[ Plugin Highlights
-- Dashboard
fg("DashboardCenter", red)
fg("DashboardFooter", green)
fg("DashboardHeader", white)
fg("DashboardShortcut", blue)

-- Git signs
fg_bg("DiffAdd", nord_blue, "none")
fg_bg("DiffChange", grey_fg, "none")
fg_bg("DiffModified", nord_blue, "none")

-- Indent blankline color
-- fg("IndentBlanklineChar", line)

-- [[ LspDiagnostics
-- Errors
fg("LspDiagnosticsSignError", red)
fg("DiagnosticError", red)
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextError", red) fg("LspDiagnosticsVirtualTextWarning", yellow)

-- Info
fg("LspDiagnosticsSignInformation", blue)
fg("LspDiagnosticsVirtualTextInformation", blue)

-- Hints
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- NvimTree
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeEndOfBuffer", darker_black)
fg("NvimTreeFolderIcon", folder_bg)
fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeIndentMarker", one_bg2)
--NvimTreeStatusLineNC
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeRootFolder", red .. " gui=underline") -- enable underline for root folder in nvim tree

 --NvimTreeStatusLine
-- fg_bg("NvimTreeStatusLineNC", '#333644', '#333644')
-- fg_bg("NvimTreeStatusLine", '#333644', '#333644')
fg_bg("NvimTreeWindowPicker", red, one_bg)

-- Telescope
fg("TelescopeBorder", blue)
fg_bg("TelescopePreviewTitle", green, one_bg)
fg_bg("TelescopePromptTitle", blue, one_bg)
fg_bg("telescoperesultstitle", red, one_bg)

fg_bg('LspSignatureActiveParameter', white, one_bg2)
-- #7f8490
-- -- Cmp
fg("CmpItemMenu", grey_menu)
fg("CmpItemAbbrDeprecated", grey_fg .. " gui=strikethrough")
fg("CmpItemKindMethod", purple_method)
-- noice
bg("NoiceCmdlinePopup", noice_bg)
fg_bg("NoiceCmdlinePopupBorder", noice_fg, noice_bg)
-- Terminal build in
--hl-TermCursor, hl-TermCursorNC
bg("TermCursor", green)
bg("TermCursorNC", red)
-- window highligh
fg_bg("WinSeparator", window_line_fg, "none")
-- fg_bg("NvimTreeVertSplit", blue, red)
