local ui_path = require("paths").statusline
local ins_section = require(ui_path .. "lualine.utils").ins_section
local statusline_style = require(ui_path .. "lualine.icons")
local colors = require(ui_path .. "lualine.colors").get()
local mode_colors = require(ui_path .. "lualine.colors").get_mode_colors()

local M_section_z = {}

ins_section(M_section_z, {
  'location',

  fmt = function ()
    local column = vim.fn.col('.')
    return string.format("Column: %d", column)
  end,

  separator = {
    left = statusline_style.left
  },

  left_padding = 2,
  color = function()
    return {
      fg = colors.location,
      bg = mode_colors[vim.fn.mode()][2]
    }
  end,
})

return M_section_z
