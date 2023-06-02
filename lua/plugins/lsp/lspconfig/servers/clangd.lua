
local default_config = require('plugins.lsp.lspconfig.servers.default_config')

local M = {}

M.cmd = {
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
  }

M.capabilities = default_config.capabilities

M. init_options = {
  clangdFileStatus = true,
  usePlaceholders = true,
  completeUnimported = true,
  semanticHighlighting = true,
}

M. on_attach = default_config.on_attach
M. on_init = default_config.on_init

return M
