local colors = require("ui.colors").get()
local M = {}

M.include_current = false

M.autoselect_one = true

M.selection_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890;CMRUEIWOQP'

M.use_winbar = 'always'

M.show_prompt = false

M.fg_color = colors.red

M.current_win_hl_color = colors.one_bg2

M.other_win_hl_color = colors.one_bg3

M.filter_rules = {
  bo = {
    filetype = { 'NvimTree', "neo-tree-popup", "neo-tree", "notify" },
    buftype = { 'terminal', "quickfix" },
  },
}

return M
