local colors = require("colors").get()

require('bufferline').setup {
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
    always_show_bufferline = false,
    diagnostics = false,
    max_name_length = 10,
    max_prefix_length = 10,
    tab_size = 10,
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        highlight = "Directory",
        text_align = "left"
      }
    },
    sort_by = 'id',
  },

  highlights = {
    tab_selected = {
      fg = colors.grey,
      bg = colors.green,
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
  };
}

