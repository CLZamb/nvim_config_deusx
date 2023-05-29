local hi = require('ui.highlights_util')
local colors = require("ui.colors").get()

local yellow = colors.yellow
local one_bg2 = colors.one_bg2
local purple = colors.purple
local white = colors.white
local red = colors.red
local blue = colors.blue

hi.fg_bg('LspSignatureActiveParameter', white, one_bg2)
hi.fg("LspDiagnosticsSignError", red)
hi.fg("DiagnosticError", red)
hi.fg("LspDiagnosticsSignWarning", yellow)
hi.fg("LspDiagnosticsVirtualTextError", red)
hi.fg("LspDiagnosticsVirtualTextWarning", yellow)
-- Info
hi.fg("LspDiagnosticsSignInformation", blue)
hi.fg("LspDiagnosticsVirtualTextInformation", blue)
-- Hints
hi.fg("LspDiagnosticsSignHint", purple)
hi.fg("LspDiagnosticsVirtualTextHint", purple)
