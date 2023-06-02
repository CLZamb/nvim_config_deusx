local default_config = require('plugins.lsp.lspconfig.servers.default_config')
local M = {}

M.capabilities = default_config.capabilities

M.settings = {
  Lua = {
    runtime = {
      version = 'Lua 5.4.4',
      path = {
        '?.lua',
        '?/init.lua',
        vim.fn.expand'~/.luarocks/share/lua/5.3/?.lua',
        vim.fn.expand'~/.luarocks/share/lua/5.3/?/init.lua',
        '/usr/share/5.3/?.lua',
        '/usr/share/lua/5.3/?/init.lua'
      }
    },
    workspace = {
      library = {
        vim.fn.expand'~/.luarocks/share/lua/5.3',
        '/usr/share/lua/5.3'
      }
    }
  }
}

M.on_attach = default_config.on_attach
M.on_init = default_config.on_init

return M
