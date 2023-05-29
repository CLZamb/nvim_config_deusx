local ui_path = require("paths").ui_plugins
local colors_fg = require(ui_path .. "bufferline.colors").get_fg()
local colors_bg = require(ui_path .. "bufferline.colors").get_bg()

local M = {}

M.highlights = {
      tab_selected = {
        fg = colors_fg.tab_selected,
        bg = colors_bg.tab_selected,
      },
      tab = {
        fg = colors_fg.tab,
        bg = colors_bg.tab,
      },
      tab_close = {
        fg = colors_fg.tab_close,
      },
      close_button_selected = {
        fg = colors_fg.close_button_selected,
      },
      modified = {
        fg = colors_fg.modified,
      },
      modified_selected = {
        fg = colors_fg.modified_selected,
      },
      separator = {
        fg = colors_fg.separator,
        bg = colors_bg.separator,
      },
      indicator_selected = {
        fg = colors_fg.indicator_selected,
        bg = colors_bg.indicator_selected,
      },
    }

M.options = {
  -- buffer_close_icon = '' ,
  numbers = function(opts)
    return string.format('%s', opts.ordinal)
  end,
  close_icon = "󰅙 ",
  max_name_length = 14,
  max_prefix_length = 13,
  tab_size = 20,
  show_tab_indicators = true,
  enforce_regular_tabs = false,
  view = "multiwindow",
  show_buffer_close_icons = true,
  always_show_bufferline = true,
  diagnostics = false,
  offsets = {{ filetype = "neo-tree"}},
  sort_by = 'id',
  color_icons = true,
}

return M
