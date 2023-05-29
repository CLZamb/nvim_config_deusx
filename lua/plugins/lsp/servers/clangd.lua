local config_opts = require('plugins.lsp.config.cfg_lsp_server_setup_opts')
local nvim_lsp = require('lspconfig')

nvim_lsp['clangd'].setup({
  cmd = {
    -- see clangd --help-hidden
    "clangd",
    "--background-index",
    -- by default, clang-tidy use -checks=clang-diagnostic-*,clang-analyzer-*
    -- to add more checks, create .clang-tidy file in the root directory
    -- and add Checks key, see https://clang.llvm.org/extra/clang-tidy/
    "--clang-tidy",
    "--completion-style=detailed",
    "--header-insertion=iwyu",
    "--header-insertion-decorators" ,
  },

  capabilities = config_opts.capabilities,

  -- handlers = handler.with({ handler.hover, clangd_ext_handler }),

  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },

  on_attach = config_opts.on_attach,
  on_init = config_opts.on_init
})

