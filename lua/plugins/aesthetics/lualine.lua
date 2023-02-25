return {
  'nvim-lualine/lualine.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'nvim-tree/nvim-tree.lua',
  },

  config = function()
    local config = require('plugins.config.cfg_lualine')
    local colors = require("ui.colors").get()

    local theme = {
      normal = {
        a = { fg = colors.fg, bg = colors.statusline_bg } ,
        b = { fg = colors.fg, bg = colors.statusline_bg } ,
        c = { fg = colors.fg, bg = colors.statusline_bg } ,
        z = { fg = colors.fg, bg = colors.statusline_bg },
      },
      inactive = { c = { fg = colors.fg, bg = colors.bg } },
    }

    require('lualine').setup {
      options = {
        theme = theme,
        component_separators = '',
        section_separators = { left = ' ', right = ' ' },
        globalstatus = vim.go.laststatus == 3,
       },

      sections = {
        lualine_a = config.section_a,
        lualine_b = config.section_b,
        lualine_c = {},
        lualine_x = {},
        lualine_y = config.section_y,
        lualine_z = config.section_z,
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_y = {},
        lualine_c = { '%f:%y:%m' },
        lualine_x = {},
        lualine_z = {'location'},
      },
      extensions = {
        'toggleterm',
        'quickfix',
        'symbols-outline'
      },
    }
  end
}

