return {
  'williamboman/mason.nvim',

  dependencies = {
    'williamboman/mason-lspconfig.nvim',
  },

  config = function(_, _)
    require("mason").setup({})
    require("mason-lspconfig").setup({
      ensure_installed = {
        'clangd',
        -- 'rust_analyzer',
        'cmake',
        'lua_ls',
        -- 'tsserver',
        -- 'html',
        -- 'cssls'
      },
      automatic_installation = true,
    })
  end
}
