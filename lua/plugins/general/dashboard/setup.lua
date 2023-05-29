local general_path = require("paths").general_plugins

return {
  'glepnir/dashboard-nvim',

  lazy = true,
  -- event = 'VimEnter',

  dependencies = { {'nvim-tree/nvim-web-devicons'}},

  opts = require(general_path .. "dashboard.opts"),

  config = function(_, opts)
    local fg_colors = require(general_path.."dashboard.colors").get_fg()

    require("dashboard").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
  end
}
