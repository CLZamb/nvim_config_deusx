local hi = require('ui.highlights_util')

local color = {
  noice_bg = "#30343c",
  noice_fg = "#30343c",
}

hi.bg("NoiceCmdlinePopup", color.noice_bg)
hi.fg_bg("NoiceCmdlinePopupBorder", color.noice_fg, color.noice_bg)
