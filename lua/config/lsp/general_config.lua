local M = {}

local lsp_handlers = require('config.lsp.lsp_handlers')
local cmp_nvim_lsp = require('cmp_nvim_lsp')

-- autocompletion
M.capabilities = cmp_nvim_lsp.default_capabilities()

-- configuration on attach
M.on_attach = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  lsp_handlers.set_lsp_signature(client, bufnr)
  lsp_handlers.set_navic(client, bufnr)
end

-- notify the lsp started
M.on_init = function(client)
  local m = "[" .. client.name .. "] client server has started successfully!";
  vim.notify(m, nil, { title = " LSP"})
end

M.flags = { debounce_text_changes = 150 }

return M
