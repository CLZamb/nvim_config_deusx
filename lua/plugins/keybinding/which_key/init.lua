local cur_path = require("paths").keybinding .. 'which_key.'

return {
  'folke/which-key.nvim',

  event = "VeryLazy",

  opts = require(cur_path .. 'opts'),
}
