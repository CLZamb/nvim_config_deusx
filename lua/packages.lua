vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function()
  -- Packer can manage itself
  use{'wbthomason/packer.nvim'}
  -- --   -- fuzzy finding
  use {'/usr/local/opt/fzf'}
  use {'junegunn/fzf.vim',  opt = true }
  -- -- additional mru option for fzf
  -- use{'pbogut/fzf-mru.vim'}
  -- ================ Color-Schemes ====================
  use{'morhetz/gruvbox', opt = true}
  use{'navarasu/onedark.nvim'}
  -- use{'folke/tokyonight.nvim'}
  use{'sainnhe/edge'}
  use{'sainnhe/sonokai'}
  -- use{'monsonjeremy/onedark.nvim'}
  -- use{'joshdick/onedark.vim'}
  use{'olimorris/onedarkpro.nvim'}
  use{'fneu/breezy', opt = true}
  -- -- ================================================
  -- -- installs extra icons
  use{'kyazdani42/nvim-web-devicons'}
  -- use{'ryanoasis/vim-devicons'}
  -- run spec files
  use{'thoughtbot/vim-rspec',  opt = true }
  -- shows the markers on the left margin
  use{'kshenoy/vim-signature',  opt = true}
  -- easy way to navigate inside a file
  use{'phaazon/hop.nvim', opt = true }
  -- adds an end in ruby files
  use{'tpope/vim-endwise'}
  -- use{'MarcWeber/vim-addon-mw-utils'}
  -- use{'tomtom/tlib_vim'}
  -- snippets autocompletion
  -- pack with all types of snippets
  -- use{'honza/vim-snippets'}
  -- use{'honza/vim-snippets', rtp = '.'}
  -- shows tag at the right side of the file
  -- use{'majutsushi/tagbar'}
  -- use{'editorconfig/editorconfig-vim'}
  -- git helper
  -- use{'airblade/vim-gitgutter'}
  use { 'lewis6991/gitsigns.nvim',requires = {'nvim-lua/plenary.nvim'},}
  --
  --   -- tag = 'release' -- To use the latest release
  -- -- changes/deletes/add surround
  use{'tpope/vim-surround'}
  -- -- helper to navigate inside vim and with tmux
  use{'christoomey/vim-tmux-navigator'}
  -- allow to change the inted line
  use{'Yggdroot/indentLine'}
  -- ruby functions
  -- is used to use the ctag standard library
  use{'vim-ruby/vim-ruby'}
  -- go to ruby tags
  use{'tpope/vim-rails'}
  use{'tpope/vim-rbenv'}
  use{'tpope/vim-bundler'}
  -- shows leader + any key at the bottom/top of the file
  -- use{'liuchengxu/vim-which-key'}
  -- use{'AckslD/nvim-whichkey-setup.lua'}
  -- git helper
  -- use{'tpope/vim-fugitive'}
  -- helps to comment things out
  use{'tomtom/tcomment_vim'}
  -- require to use vim sessions
  -- use{'xolox/vim-misc'se}
  -- saves and open sessions
  -- use{'xolox/vim-session'}
  --
  use{'rmagatti/auto-session'}
  use{'rmagatti/session-lens',
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'}
  }
  use{'tpope/vim-repeat'}
  -- snippets creation
  -- use{'SirVer/ultisnips'}
  use {'honza/vim-snippets'}
  use({"SirVer/ultisnips",requires = "honza/vim-snippets",})
  -- Ranger integration in vim and neovim
  -- use{'francoiscabrol/ranger.vim'}
  -- dependency ranger
  use{'rbgrouleff/bclose.vim'}
  use{'machakann/vim-highlightedyank'}
  use{'kana/vim-textobj-user'}
  -- use{'nelstrom/vim-textobj-rubyblock',  opt = true }
  use{'andymass/vim-matchup'}
  -- use{'spywhere/lightline-lsp'}
  -- use{'tpope/vim-obsession'}
  use{'cdelledonne/vim-cmake'}
  use{'voldikss/vim-floaterm'}
  use{'alepez/vim-gtest'}
  use{'neovim/nvim-lspconfig'}
  use{'williamboman/nvim-lsp-installer'}
  use{'hrsh7th/nvim-cmp' }
  use{'quangnguyen30192/cmp-nvim-ultisnips'}
  use{'hrsh7th/cmp-path'}
  use{'hrsh7th/cmp-buffer'}
  use{'hrsh7th/cmp-nvim-lsp'}
  -- use{"hrsh7th/cmp-cmdline"}
  -- use{'kyazdani42/nvim-tree.lua'}
  use{'ray-x/lsp_signature.nvim'}
  use{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use{'folke/which-key.nvim'}
  -- use{'projekt0n/github-nvim-theme'}
  use{'BurntSushi/ripgrep'}
  use{'nvim-lua/popup.nvim'}
  use{'nvim-lua/plenary.nvim'}
  use{'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
  use{'fhill2/telescope-ultisnips.nvim'}
  use{'nvim-telescope/telescope-fzy-native.nvim'}
  use{'nvim-telescope/telescope-file-browser.nvim' }
  use{'folke/trouble.nvim'}
  use{'pwntester/octo.nvim', opt = true}
  use{'famiu/feline.nvim'}
  use{'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use{'kyazdani42/nvim-tree.lua', requires = "kyazdani42/nvim-web-devicons"}
  use{'rcarriga/nvim-notify'}
  use{'puremourning/vimspector'}
  use{"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
  use{"mfussenegger/nvim-lint"}
  -- use{'glepnir/dashboard-nvim'}
  -- Asynctask 
  use{'skywind3000/asynctasks.vim'}
  use{'skywind3000/asyncrun.vim'}
  use{'skywind3000/asyncrun.extra'}
  use{'GustavoKatel/telescope-asynctasks.nvim'}
  use{'https://git.sr.ht/~whynothugo/lsp_lines.nvim'}
  -- use{"nvim-neorg/neorg", requires = "nvim-lua/plenary.nvim"}
end)


-- vim.cmd [[packloadall]]
