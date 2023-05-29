local general_path = require("paths").general_plugins

return {
  'lewis6991/gitsigns.nvim',

  dependencies = { 'nvim-lua/plenary.nvim' },

  opts = require(general_path .. "gitsigns.opts"),

  config = function(_, opts)
    local fg_colors = require(general_path .. "gitsigns.colors").get_fg()

    require("gitsigns").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
  end
}
