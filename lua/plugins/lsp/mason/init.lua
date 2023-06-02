local cur_path = require("paths").lsp .. "mason."

return {
  'williamboman/mason.nvim',

  dependencies = {{
    'williamboman/mason-lspconfig.nvim',
    opts = function()
      require(cur_path .. 'mason_lspconfig_opts')
    end
  }},

  config = true,
}
