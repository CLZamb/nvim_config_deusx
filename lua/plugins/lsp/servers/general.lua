local servers = require 'mason-lspconfig'.get_installed_servers()
local nvim_lsp = require('lspconfig')
local config_opts = require('plugins.lsp.config.cfg_lsp_server_setup_opts')

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup(config_opts)
end
