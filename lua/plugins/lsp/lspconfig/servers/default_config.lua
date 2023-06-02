local M = {}
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local lsp_handlers = require('plugins.lsp.lspconfig.servers.handlers')
local set_buf_options = vim.api.nvim_buf_set_option
local notify = require('notify')
local str_server_started = "client server has started successfully!";

-- autocompletion
M.capabilities = cmp_nvim_lsp.default_capabilities()

-- configuration on attach
M.on_attach = function(client, bufnr)
  set_buf_options(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  lsp_handlers.set_lsp_signature(client, bufnr)
  lsp_handlers.set_navic(client, bufnr)
end

-- notify when lsp starts
M.on_init = function(client)
  notify("[" .. client.name .. "] " .. str_server_started, nil, { title = " LSP"})
  -- client.server_capabilities.semanticTokensProvider = nil
end

M.flags = { debounce_text_changes = 150 }

return M
