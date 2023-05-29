return {
  'williamboman/mason.nvim',

  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },

  config = function(_, _)
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = { 'cmake' },
      automatic_installation = true,
    })
  end
}
