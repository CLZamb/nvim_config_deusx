local cmd = vim.cmd
local colors = require("ui.colors").get()

local black2 = colors.black2
local blue = colors.blue
local darker_black = colors.darker_black
local folder_bg = colors.folder_bg
local green = colors.green
local grey = colors.grey
local grey_fg = colors.grey_fg
-- local line = colors.line
local nord_blue = colors.nord_blue
local one_bg = colors.one_bg
local one_bg2 = colors.one_bg2
-- local pmenu_bg = colors.pmenu_bg
local purple = colors.purple
local red = colors.red
local white = colors.white
local yellow = colors.yellow
local one_bg3 = colors.one_bg3
local noice_bg = colors.noice_bg
local noice_fg = colors.noice_fg
local endofbufferfg = one_bg

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
fg("FloatBorder", blue)
bg("NormalFloat", one_bg)
-- misc

-- inactive statuslines as thin lines
fg("StatusLineNC", one_bg3 .. " gui=underline")

fg("LineNr", grey)
fg("NvimInternalError", red)
fg("VertSplit", one_bg2)

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
fg("LspDiagnosticsSignWarning", yellow)
fg("LspDiagnosticsVirtualTextError", red)
fg("LspDiagnosticsVirtualTextWarning", yellow)

-- Info
fg("LspDiagnosticsSignInformation", blue)
fg("LspDiagnosticsVirtualTextInformation", blue)

-- Hints
fg("LspDiagnosticsSignHint", purple)
fg("LspDiagnosticsVirtualTextHint", purple)

-- ]]
-- NvimTree
fg("NvimTreeEmptyFolderName", blue)
fg("NvimTreeEndOfBuffer", darker_black)
fg("NvimTreeFolderIcon", folder_bg)
fg("NvimTreeFolderName", folder_bg)
fg("NvimTreeGitDirty", red)
fg("NvimTreeIndentMarker", one_bg2)
-- bg("NvimTreeNormal", darker_black)
-- bg("NvimTreeNormalNC", darker_black)
fg("NvimTreeOpenedFolderName", blue)
fg("NvimTreeRootFolder", red .. " gui=underline") -- enable underline for root folder in nvim tree
-- fg_bg("NvimTreeStatuslineNc", darker_black, darker_black)
fg("NvimTreeVertSplit", darker_black)
bg("NvimTreeVertSplit", one_bg)
fg_bg("NvimTreeWindowPicker", red, black2)

-- Telescope
fg("TelescopeBorder", blue)
fg_bg("TelescopePreviewTitle", green, one_bg)
fg_bg("TelescopePromptTitle", blue, one_bg)
fg_bg("telescoperesultstitle", red, one_bg)

fg_bg('LspSignatureActiveParameter', white, one_bg2)

local purple_method = "#d38aea"
-- local pink = "#C586C0"
-- local front = "#D4D4D4"
-- local grey_menu = "#909090"
local grey_menu = "#7f8490"
-- #7f8490
-- Pmenu
-- bg("Pmenu", one_bg2)
-- bg("PmenuSbar", one_bg2)
-- bg("PmenuThumb", nord_blue)
-- -- bg("PmenuSel", blue)
-- -- Cmp
fg("CmpItemMenu", grey_menu)
fg("CmpItemAbbrDeprecated", grey_fg .. " gui=strikethrough")
-- fg("CmpItemAbbrMatch", blue)
-- fg("CmpItemAbbrMatchFuzzy", blue)
-- fg("CmpItemKindVariable", red)
-- fg("CmpItemKindInterface", blue)
-- fg("CmpItemKindText", nord_blue)
-- fg("CmpItemKindFunction", pink)
fg("CmpItemKindMethod", purple_method)
-- fg("CmpItemKindKeyword", front)
-- fg("CmpItemKindProperty", pink)
-- fg("CmpItemKindUnit", front)
-- noice
-- bg("NoiceCmdline", purple_method)
bg("NoiceCmdlinePopup", noice_bg)
fg_bg("NoiceCmdlinePopupBorder", noice_fg, noice_bg)
-- vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = green, bg = red, blend = 0 })
-- vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = green, bg = red, blend = 0 })
-- vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = green, bg = red, blend = 0 })
-- vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = green, bg = red, blend = 0 })
--
-- vim.api.nvim_set_hl(0, "NoiceMini", { bg = green })
-- vim.api.nvim_set_hl(0, "NoiceMiniSearch", { bg = red })
-- vim.api.nvim_set_hl(0, "NoiceMiniIncSearch", { bg = blue })
