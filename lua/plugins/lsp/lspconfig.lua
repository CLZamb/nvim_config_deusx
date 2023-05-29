return {
  'neovim/nvim-lspconfig',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'ray-x/lsp_signature.nvim',
    'SmiteshP/nvim-navic',
    'williamboman/mason.nvim',
    -- { 'folke/neodev.nvim', config = true },
  },

  config = function(_, _)
    require('plugins.lsp.servers.general')
    require('plugins.lsp.servers.clangd')
    require('plugins.lsp.servers.lua_ls')
    require('plugins.lsp.config.lsp_ui_customization')
  end
}
