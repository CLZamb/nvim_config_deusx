local lsp = vim.lsp
local handlers = lsp.handlers
local border = {
  {"╭", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╮", "FloatBorder"},
  {"│", "FloatBorder"},
  {"╯", "FloatBorder"},
  {"─", "FloatBorder"},
  {"╰", "FloatBorder"},
  {"│", "FloatBorder"},
}

local virtual_text = {
    prefix = ' ',
    spacing = 2,
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

handlers['textDocument/hover'] =  lsp.with(handlers.hover, {border = border})
handlers['textDocument/publishDiagnostics'] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = virtual_text,
  signs = true,
  underline = true,
  update_in_insert = false,
})

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

