local highlights = require('ui.highlights_util')
local colors = require("ui.colors").get()

local cmd = vim.cmd
cmd("hi clear CursorLine")

local fg_colors = {
  LspDiagnosticsSignError = colors.red,
  DiagnosticError = colors.red,
  LspDiagnosticsSignWarning = colors.yellow,
  LspDiagnosticsVirtualTextError = colors.red,
  LspDiagnosticsVirtualTextWarning = colors.yellow,
  LspDiagnosticsSignInformation = colors.blue,
  LspDiagnosticsVirtualTextInformation = colors.blue,
  LspDiagnosticsSignHint = colors.purple,
  LspDiagnosticsVirtualTextHint = colors.purple,
}

local fg_bg_colors = {
  LspSignatureActiveParameter = { colors.white, colors.one_bg2 },
}

highlights.fg_groups(fg_colors)
highlights.fg_bg_groups(fg_bg_colors)
