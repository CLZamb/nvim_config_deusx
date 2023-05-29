local ui_path = require("paths").ui_plugins

return {
  'lukas-reineke/indent-blankline.nvim',

  dependencies = {
    'nvim-treesitter/nvim-treesitter'
  },

  opts = require(ui_path .. "indent_blankline.opts"),
}
