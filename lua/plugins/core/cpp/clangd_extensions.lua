return {
  'p00f/clangd_extensions.nvim',

  dependencies = {
    'neovim/nvim-lspconfig',
  },

  config = function()
    local cfg = require('config.lsp.general_config')
    require("clangd_extensions").setup {
      server = cfg,
    }
  end
}
