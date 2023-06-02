local nvim_lsp = require('lspconfig')
local M = {}

M.set_up_server = function(lsp_name, config)
  nvim_lsp[lsp_name].setup(config)
end

M.set_up_servers = function(servers, config)
  for _, lsp_name in ipairs(servers) do
    M.set_up_server(lsp_name, config)
  end
end


return M
