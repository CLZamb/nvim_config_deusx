local ui_path = require("paths").statusline
local ins_section = require(ui_path .. "lualine.utils").ins_section
local colors = require(ui_path .. "lualine.colors").get()
local mode_colors = require(ui_path .. "lualine.colors").get_mode_colors()
local empty = require(ui_path .. "lualine.utils").empty
local statusline_style = require(ui_path .. "lualine.icons")

local M_section_a = {}

ins_section(M_section_a, {
  function()
    return  "󰹻 "
  end,
  color = function()
  -- auto change color according to neovims mode
    return {
      fg = colors.icon_fg,
      bg = mode_colors[vim.fn.mode()][2]
    }
  end,

  separator = {
    right = statusline_style.right
  }
})

-- custom separator
ins_section(M_section_a, {
  empty,
  color = {
    fg = colors.separator_section_a_fg,
    bg = colors.separator_section_a_bg
  },
  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M_section_a, {
  function()
    local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    return "  " .. dir_name .. " "
  end,

  color = {
    fg = colors.directory_fg,
    bg = colors.directory_bg,
  },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M_section_a, {
  'diagnostics',

  symbols = { error = '', warn = ' ', info = ' ', hint = ' '},

  color = { bg = colors.diagnostic_bg },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

return M_section_a
