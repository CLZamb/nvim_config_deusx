local M = {}
local lsp_signature = require('lsp_signature')
local navic = require("nvim-navic")

M.set_lsp_signature = function(_ , bufnr)
  lsp_signature.on_attach({
    bind = true,
    max_height = 20,
    doc_lines = 20,
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    handler_opts = { border = "single" },
    hint_enable = false
  }, bufnr)
end

M.set_navic = function(client, bufnr)
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
end
return M
