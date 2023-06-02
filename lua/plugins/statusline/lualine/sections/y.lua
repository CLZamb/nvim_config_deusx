local ui_path = require("paths").statusline
local ins_section = require(ui_path .. "lualine.utils").ins_section
local colors = require(ui_path .. "lualine.colors").get()
local statusline_style = require(ui_path .. "lualine.icons")
local mode_colors = require(ui_path .. "lualine.colors").get_mode_colors()

local M_section_y = {}

ins_section(M_section_y, {
  require("lazy.status").updates,
  cond = require("lazy.status").has_updates,
  color = { fg = "#ff9e64" },
})

ins_section(M_section_y, {
  'diff',
  symbols = {
    added = ' ',
    modified = ' ',
    removed = ' '
  }, -- Changes the symbols used by the diff.

  color = { bg = colors.diff_bg },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M_section_y, {
  'branch',

  icon = "",

  color = {
      bg = colors.branch_bg,
      fg = colors.branch_fg
  },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M_section_y, {
  'fileformat',

  fmt = function() return string.format('') end,

  color = function()
    return {
      fg = colors.file_format,
      bg = mode_colors[vim.fn.mode()][2],
    }
  end,

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M_section_y, {
  'progress',

  color = function()
    return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.progress,
    }
  end,

  separator = {
    left = statusline_style.left
  }
})

return M_section_y
