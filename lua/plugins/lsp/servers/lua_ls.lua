local config_opts = require('plugins.lsp.config.cfg_lsp_server_setup_opts')
local nvim_lsp = require('lspconfig')

nvim_lsp['lua_ls'].setup({
  capabilities = config_opts.capabilities,

  settings = {
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
  },

  on_attach = config_opts.on_attach,
  on_init = config_opts.on_init
})

