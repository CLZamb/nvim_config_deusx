return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'andymass/vim-matchup'
  },

  build = ':TSUpdate',

  config = function(_, _)
    require'nvim-treesitter.install'.compilers = { "clang", "gcc", "clang++", "gcc-11"}
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { 'c', 'lua', 'cpp', 'java', 'python', 'javascript'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      highlight = {
        enable = true,              -- false will disable the whole extension
      },
      matchup = {
        enable = true,              -- mandatory, false will disable the whole extension
      },
    }
  end
}
