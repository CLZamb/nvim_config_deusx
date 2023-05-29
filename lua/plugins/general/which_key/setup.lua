local general_path = require("paths").general_plugins

return {
  'folke/which-key.nvim',

  event = "VeryLazy",

  opts = require(general_path .. 'which_key.opts'),

  config = function(_, opts)
    require("which-key").setup (opts)
    require(general_path .. 'which_key.mappings')
  end
}
