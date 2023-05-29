local general_path = require("paths").general_plugins

return {
  'folke/trouble.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  event = "VeryLazy",

  opts = require(general_path .. "trouble.opts"),
}
