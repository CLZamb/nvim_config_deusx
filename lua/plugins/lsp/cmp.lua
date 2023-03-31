return {
  'hrsh7th/nvim-cmp',

  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  },

  event = "VeryLazy",

  config = function(_, _)
    local cfg_cmp = require('plugins.config.cfg_cmp')
    require('cmp').setup(cfg_cmp)
    end
  }
