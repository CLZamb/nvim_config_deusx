local cur_path = require("paths").fuzzy_finder .. "telescope."

return {
  'nvim-telescope/telescope.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  },

  opts = require(cur_path .. "opts"),

  config = function(_, opts)
    local highlights = require('ui.highlights_util')
    local fg_colors = require(cur_path .. "colors").get_fg()
    local bg_colors = require(cur_path .. "colors").get_bg()
    local telescope = require("telescope")

    telescope.setup(opts)
    telescope.load_extension('fzy_native')
    telescope.load_extension('file_browser')
    -- telescope.load_extension('persisted')

    highlights.fg_groups(fg_colors)
    highlights.bg_groups(bg_colors)
  end
}
