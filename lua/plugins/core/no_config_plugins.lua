return {
  -- ================================================
  -- changes/deletes/add surround
  {'tpope/vim-surround'},
  -- ruby 
  {'thoughtbot/vim-rspec',  ft = 'rb' }, -- run spec files
  {'vim-ruby/vim-ruby', ft = 'rb'},
  {'tpope/vim-endwise', ft = 'rb'},
  {'tpope/vim-rails', ft = 'rb'},
  {'tpope/vim-rbenv', ft = 'rb'},
  {'tpope/vim-bundler', ft = 'rb'},
  -- helps to comment things out
  {'numToStr/Comment.nvim', config = true },
  {'tpope/vim-repeat'},
  -- snippets creation,
  -- {'honza/vim-snippets'},
  {'rbgrouleff/bclose.vim'},
  {'machakann/vim-highlightedyank'},
  -- {'BurntSushi/ripgrep'},
  {'SmiteshP/nvim-navic'},
  {'rmagatti/session-lens', dependencies = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'}},
  {'akinsho/toggleterm.nvim', config = true},
  {'saadparwaiz1/cmp_luasnip', dependencies = {'hrsh7th/nvim-cmp'}},
  {'knubie/vim-kitty-navigator'},
  {'kdheepak/lazygit.nvim'},
}
