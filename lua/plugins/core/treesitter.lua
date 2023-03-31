return {
  'nvim-treesitter/nvim-treesitter',

  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
    'andymass/vim-matchup',
    'nvim-treesitter/playground',
  },

  build = ':TSUpdate',

  config = function(_, _)
    require('nvim-treesitter.install').compilers = { "clang", "gcc", "clang++", "gcc-11"}
    require('nvim-treesitter.configs').setup {
      sync_install = false,
      ignore_install = {},
      ensure_installed = { 'c', 'lua', 'cpp', 'java', 'python', 'javascript'},
      highlight = {
        enable = true,              -- false will disable the whole extension
        disable = {''},
        additional_vim_regex_highlighting = false,
      },
      indent = {
        enable = true,
      },
      matchup = {
        enable = true,              -- mandatory, false will disable the whole extension
      },
      playground = {
        enable = true,
        disable = {},
        updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
        persist_queries = false, -- Whether the query persists across vim sessions
        keybindings = {
          toggle_query_editor = 'o',
          toggle_hl_groups = 'i',
          toggle_injected_languages = 't',
          toggle_anonymous_nodes = 'a',
          toggle_language_display = 'I',
          focus_language = 'f',
          unfocus_language = 'F',
          update = 'R',
          goto_node = '<cr>',
          show_help = '?',
        },
      },
    }
  end
}
