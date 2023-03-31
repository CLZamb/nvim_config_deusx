return {
  'neovim/nvim-lspconfig',

  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'folke/neodev.nvim', config = true },
    'ray-x/lsp_signature.nvim',
    'SmiteshP/nvim-navic',
    'williamboman/mason.nvim',
  },

  config = function(_, _)
    local servers = require'mason-lspconfig'.get_installed_servers()
    local nvim_lsp = require('lspconfig')
    local config_opts = require('plugins.config.lsp.cfg_lsp_server_setup_opts')

    for _, lsp in ipairs(servers) do
      nvim_lsp[lsp].setup(config_opts)
    end

    require('plugins.config.lsp.lsp_ui_customization')
  end
}
