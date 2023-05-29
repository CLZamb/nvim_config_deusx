local general_path = require("paths").general_plugins

return {
  'kylechui/nvim-surround',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },

  opts = require(general_path .. "surround.opts"),
}
