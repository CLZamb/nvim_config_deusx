return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects'
  },

  build = ':TSUpdate',

  config = function(_, _)
    require'nvim-treesitter.install'.compilers = { "clang", "gcc", "clang++", "gcc-11"}
    require'nvim-treesitter.configs'.setup {
      ensure_installed = { 'c', 'lua', 'cpp', 'java', 'python', 'javascript'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
      -- ignore_install = { "javascript" }, -- List of parsers to ignore installing
      highlight = {
        enable = true,              -- false will disable the whole extension
        -- disable = { "c", "rust" },  -- list of language that will be disabled
      },
    }
  end
}
