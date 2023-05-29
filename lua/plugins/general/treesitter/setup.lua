local general_path = require("paths").general_plugins

return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'andymass/vim-matchup',
    'nvim-treesitter/playground',
  },

  build = ':TSUpdate',

  opts = require(general_path .. 'treesitter.opts'),

  config = function(_, opts)
    require('nvim-treesitter.install').compilers = { "clang", "gcc", "clang++", "gcc-11" }
    require('nvim-treesitter.configs').setup(opts)
  end
}
