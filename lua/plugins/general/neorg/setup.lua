local general_path = require("paths").general_plugins

return {
  "nvim-neorg/neorg",

  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  ft = 'norg',

  enabled = false,

  build = ':Neorg sync-parsers',

  opts = require(general_path .. "neorg.opts")
}
