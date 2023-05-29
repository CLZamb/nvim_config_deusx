local general_path = require("paths").general_plugins

return {
  'hrsh7th/nvim-cmp',

  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'honza/vim-snippets',
    'SirVer/ultisnips',
    'quangnguyen30192/cmp-nvim-ultisnips',
  },

  event = "InsertEnter",

  opts = function()
    return require(general_path .."cmp.opts")
  end,

  config = function(_, opts)
    local fg_colors = require(general_path .. "cmp.colors").get_fg()

    require("cmp").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
  end
}
