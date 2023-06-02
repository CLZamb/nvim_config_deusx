local ui_path = require("paths").indent

return {
  'lukas-reineke/indent-blankline.nvim',

  dependencies = {
    'nvim-treesitter/nvim-treesitter'
  },

  opts = require(ui_path .. "indent_blankline.opts"),
}
