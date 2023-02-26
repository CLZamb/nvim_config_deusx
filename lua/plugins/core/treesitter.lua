return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'andymass/vim-matchup',
  },

  build = ':TSUpdate',

  config = function(_, _)
    require('nvim-treesitter.install').compilers = { "clang", "gcc", "clang++", "gcc-11"}
    require('nvim-treesitter.configs').setup {
      ensure_installed = { 'c', 'lua', 'cpp', 'java', 'python', 'javascript'},
      highlight = {
        enable = true,              -- false will disable the whole extension
        disable = {},
      },
      matchup = {
        enable = true,              -- mandatory, false will disable the whole extension
      },
    }
  end
}
