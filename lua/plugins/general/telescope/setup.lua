local general_path = require("paths").general_plugins

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  },

  opts = require(general_path .. ".telescope.opts"),

  config = function(_, opts)
    local highlights = require('ui.highlights_util')
    local fg_colors = require(general_path .. "telescope.colors").get_fg()
    local bg_colors = require(general_path .. "telescope.colors").get_bg()
    local telescope = require("telescope")

    telescope.setup(opts)
    telescope.load_extension('fzy_native')
    telescope.load_extension('file_browser')

    highlights.fg_groups(fg_colors)
    highlights.bg_groups(bg_colors)
  end
}
