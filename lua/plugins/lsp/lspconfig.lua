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
      local cfg = require('config.lsp.general_config')

      for _, lsp in ipairs(servers) do
        nvim_lsp[lsp].setup(cfg)
      end
      -- vim.o.completeopt = 'menuone,noselect'
    end
}
-- %E%f:%l:%c:\ error:\ %m,%Z%m,%W%f:%l:%c:\ warning:\ %m,%Z%m,%N%f:%l%c:\ note:\ %m,%Z%m
