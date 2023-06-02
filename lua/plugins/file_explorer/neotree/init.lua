local cur_path = require("paths").file_explorer .. "neotree."

return {
  "nvim-neo-tree/neo-tree.nvim",

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "s1n7ax/nvim-window-picker"
  },

  opts = require(cur_path .. 'opts'),

  config = function(_, opts)
    -- Unless you are still migrating, remove the deprecated commands from v1.x
    vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
    local fg_colors = require(cur_path .. "colors").get_fg()
    local bg_colors = require(cur_path .. "colors").get_bg()
    local highlights = require('ui.highlights_util')

    require("neo-tree").setup(opts)
    highlights.fg_groups(fg_colors)
    highlights.bg_groups(bg_colors)
  end
}
