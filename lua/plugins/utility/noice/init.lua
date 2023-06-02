local utility_path = require("paths").utility

return {
  'folke/noice.nvim',

  dependencies = 'MunifTanjim/nui.nvim',

  opts = require(utility_path .. "noice.opts"),

  config = function(_ , opts)
    local fg_colors = require(utility_path .. "noice.colors").get_fg()
    local bg_colors = require(utility_path .. "noice.colors").get_bg()
    require("noice").setup(opts)
    require("ui.highlights_util").fg_groups(fg_colors)
    require("ui.highlights_util").bg_groups(bg_colors)
  end
}
