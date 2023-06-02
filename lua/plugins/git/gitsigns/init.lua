local cur_path = require("paths").git .. "gitsigns."

return {
  'lewis6991/gitsigns.nvim',

  dependencies = { 'nvim-lua/plenary.nvim' },

  opts = require(cur_path .. "opts"),

  config = function(_, opts)
    local fg_colors = require(cur_path .. "colors").get_fg()

    require("gitsigns").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
  end
}
