local cur_path = require("paths").lsp .. "lspconfig."

return {
  'neovim/nvim-lspconfig',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'ray-x/lsp_signature.nvim',
    'SmiteshP/nvim-navic',
    'williamboman/mason.nvim',
    -- { 'folke/neodev.nvim', config = true },
  },

  config = function(_, _)
    local utils = require(cur_path .. 'util')
    local servers_intalled_by_mason = require('mason-lspconfig').get_installed_servers()
    local default_config = require(cur_path .. 'servers.default_config')
    local clangd_config = require(cur_path .. 'servers.clangd')
    local lua_ls_config = require(cur_path .. 'servers.lua_ls')

    utils.set_up_servers(servers_intalled_by_mason, default_config)
    utils.set_up_server("clangd", clangd_config)
    utils.set_up_server("lua_ls", lua_ls_config)

    require(cur_path ..'ui_customization')
  end
}
