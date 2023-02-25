local colors = require("ui.colors").get()

return {
  'akinsho/bufferline.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {'tiagovla/scope.nvim', config = true}
  },

  opts = {
    highlights = {
      tab_selected = {
        fg = colors.grey,
        bg = colors.blue,
      },
      tab = {
        fg = colors.white,
        bg = colors.grey
      },
      tab_close = {
        fg = colors.red,
      },
      close_button_selected = {
        fg = colors.red,
      },
      modified = {
        fg = colors.grey_fg,
      },
      modified_selected = {
        fg = colors.green,
      },
      separator = {
        fg = colors.line,
        bg = colors.line
      },
      indicator_selected = {
        fg = colors.blue,
        bg = colors.line
      },
    },
    options = {
      numbers = function(opts)
        return string.format('%s', opts.ordinal)
      end,
      close_icon = "",
      max_name_length = 14,
      max_prefix_length = 13,
      tab_size = 20,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      view = "multiwindow",
      show_buffer_close_icons = true,
      always_show_bufferline = true,
      diagnostics = false,
      -- max_name_length = 10,
      -- max_prefix_length = 10,
      -- tab_size = 10,
      offsets = {{ filetype = "NvimTree"}},
      sort_by = 'id',
    },
  }
}
