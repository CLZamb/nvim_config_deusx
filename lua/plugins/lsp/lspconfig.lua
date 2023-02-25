return {
    'neovim/nvim-lspconfig',

    dependencies = {
      'nvim-lua/plenary.nvim',
      'ray-x/lsp_signature.nvim',
      'SmiteshP/nvim-navic',
    },

    config = function(_, _)
      local servers = { 'clangd', 'rust_analyzer', 'cmake', 'lua_ls', 'tsserver', 'html', 'cssls' }
      local nvim_lsp = require('lspconfig')
      local cfg = require('plugins.config.lsp.cfg_lsp_server_setup')

      for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup(cfg)
      end

      require('plugins.config.lsp.lsp_ui_customization')
    end
}
