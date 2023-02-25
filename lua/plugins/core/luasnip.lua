return {
  'L3MON4D3/LuaSnip',

  dependencies = {
    'honza/vim-snippets',
    'rafamadriz/friendly-snippets',
  },

  event = "VeryLazy",

  config = function(_, _)
    require("luasnip.loaders.from_snipmate").lazy_load()
    require("luasnip.loaders.from_vscode").lazy_load()
  end
}

