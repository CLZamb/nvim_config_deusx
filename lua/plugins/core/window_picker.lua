return {
  's1n7ax/nvim-window-picker',

  config = function()
    local colors = require("ui.colors").get()
    require'window-picker'.setup({
      selection_chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890;CMRUEIWOQP',
      use_winbar = 'always',
      show_prompt = false,
      fg_color = colors.red,
      current_win_hl_color = colors.one_bg2,
      other_win_hl_color = colors.one_bg3,
    })
  end,
}
