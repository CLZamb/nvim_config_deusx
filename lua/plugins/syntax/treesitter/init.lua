local cur_path = require("paths").syntax .. "treesitter."

return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'andymass/vim-matchup',
  },

  build = ':TSUpdate',

  opts = require(cur_path .. 'opts'),

  config = function(_, opts)
    require('nvim-treesitter.install').compilers = { "clang", "gcc", "clang++", "gcc-11" }
    require('nvim-treesitter.configs').setup(opts)
  end
}
