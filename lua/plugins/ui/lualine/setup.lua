local ui_path = require("paths").ui_plugins

return {
  'nvim-lualine/lualine.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  event = "VeryLazy",

  opts = function()
    return require( ui_path .. 'lualine.opts')
  end,
}
