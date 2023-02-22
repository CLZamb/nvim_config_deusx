return {
  'williamboman/mason.nvim',

  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
  },

  config = function(_, _)
    require("mason").setup()
    require("mason-lspconfig").setup()
  end
}
