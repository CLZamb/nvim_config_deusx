local cur_path = require("paths").syntax .. "surround."

return {
  'kylechui/nvim-surround',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },

  opts = require(cur_path .. "opts"),
}
