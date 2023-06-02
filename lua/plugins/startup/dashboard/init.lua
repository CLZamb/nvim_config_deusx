local startup = require("paths").startup

return {
  'glepnir/dashboard-nvim',

  event = 'VimEnter',

  dependencies = { { 'nvim-tree/nvim-web-devicons' } },

  opts = require(startup .. "dashboard.opts"),

  config = function(_, opts)
    local fg_colors = require(startup .. "dashboard.colors").get_fg()

    require("dashboard").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
  end
}
