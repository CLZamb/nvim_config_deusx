local lsp = vim.lsp
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

lsp.handlers["textDocument/hover"] =  lsp.with(lsp.handlers.hover, {border = border})
lsp.handlers['textDocument/publishDiagnostics'] = lsp.with(lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = {
    source = "always",  -- Or "if_many-- "
    prefix = '',-- Could be '●', '▎', 'x'
    spacing = 2,
  },

  signs = true,
  underline = true,
  update_in_insert = false,
})

-- customizes diagnostic signs on the git gutters
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

