local M = {}

local sections = require('plugins.ui.lualine.sections')
local colors = require('plugins.ui.lualine.colors').get()

local theme = {
  normal = {
    a = { fg = colors.fg, bg = colors.bg },
    b = { fg = colors.fg, bg = colors.bg },
    c = { fg = colors.fg, bg = colors.bg },
    z = { fg = colors.fg, bg = colors.bg },
  },
  inactive = { c = { fg = colors.fg, bg = colors.bg } },
}

M.options = {
  theme = theme,
  component_separators = '',
  section_separators = { left = ' ', right = ' ' },
  globalstatus = vim.go.laststatus == 3,
}

M.sections = {
  lualine_a = sections.section_a,
  lualine_b = sections.section_b,
  lualine_c = {},
  lualine_x = {},
  lualine_y = sections.section_y,
  lualine_z = sections.section_z,
}

M.inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_y = {},
  lualine_c = { '%f:%y:%m' },
  lualine_x = {},
  lualine_z = { 'location' },
}

M.extensions = {
  'quickfix',
  'symbols-outline',
}

return M
