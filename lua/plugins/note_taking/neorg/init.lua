local cur_path = require("paths").note_taking .. "neorg."

return {
  "nvim-neorg/neorg",

  dependencies = {
    'nvim-lua/plenary.nvim',
  },

  ft = 'norg',

  enabled = false,

  build = ':Neorg sync-parsers',

  opts = require(cur_path .. "opts")
}
