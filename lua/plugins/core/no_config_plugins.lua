return {
  -- ================================================
  -- changes/deletes/add surround
  {'tpope/vim-surround'},
  -- ruby 
  -- run spec files
  {'thoughtbot/vim-rspec',  ft = 'rb' },
  {'vim-ruby/vim-ruby', ft = 'rb'},
  {'tpope/vim-endwise', ft = 'rb'},
  {'tpope/vim-rails', ft = 'rb'},
  {'tpope/vim-rbenv', ft = 'rb'},
  {'tpope/vim-bundler', ft = 'rb'},
  -- helps to comment things out
  {'tomtom/tcomment_vim'},
  {'tpope/vim-repeat'},
  -- snippets creation,
  -- {'honza/vim-snippets'},
  {'rbgrouleff/bclose.vim'},
  {'machakann/vim-highlightedyank'},
  {'andymass/vim-matchup'},
  {'BurntSushi/ripgrep'},
  {'pwntester/octo.nvim', lazy = true},
  {'SmiteshP/nvim-navic'},
  {'rmagatti/session-lens', dependencies = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'}},
  {'akinsho/toggleterm.nvim', config = true},
  {'saadparwaiz1/cmp_luasnip', dependencies = {'hrsh7th/nvim-cmp'}},
}
