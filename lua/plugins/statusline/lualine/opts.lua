local ui_path = require("paths").statusline

local M = {}

local section_a = require(ui_path .. 'lualine.sections.a')
local section_b = require(ui_path .. 'lualine.sections.b')
local section_y = require(ui_path .. 'lualine.sections.y')
local section_z = require(ui_path .. 'lualine.sections.z')

local colors = require(ui_path .. 'lualine.colors').get()

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
  lualine_a = section_a,
  lualine_b = section_b,
  lualine_c = {},
  lualine_x = {},
  lualine_y = section_y,
  lualine_z = section_z,
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
