-- required config
local nvim_lsp = require('lspconfig')
local lsp_signature = require 'lsp_signature'

-- configuration on attach
local attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
  -- local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
  --  
  -- lps signature plugin attach to the servers
  --lsp_signature
  --
  lsp_signature.on_attach({
    bind = true,
    hi_parameter = "LspSignatureActiveParameter", -- how your parameter will be highlight
    handler_opts = {
      border = "single"   -- double, rounded, single, shadow, none
    },
    hint_enable = false
  }, bufnr)
end

local async = require("plenary.async")
local notify = require("notify").async
local custom_init = function(client)
  async.run(function()
    notify("[".. vim.fn.toupper(client.name:sub(1, 1)) .. client.name:sub(2) .. "]" .. " client server has started successfully!")
  end)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
-- elabe cmp_nvim_lsp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
--- setup for every server
--
local servers = { 'clangd', 'rust_analyzer', 'cmake', 'tsserver', 'html', 'cssls' }
-- local servers = { 'rust_analyzer'}
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup({
    capabilities = capabilities,
    on_attach = attach,
    on_init = custom_init,
    flags = {
      debounce_text_changes = 150,
    }
  })
end

vim.o.completeopt = 'menuone,noselect'
