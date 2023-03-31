local M = {}

local colors = require("ui.colors").get()
-- local STATUS = require('overseer').constants.STATUS

local config = {
  style = "slant",
}

local icon_styles = {
  default = {
    left = "",
    right = " ",
    main_icon = "  ",
    vi_mode_icon = " ",
    position_icon = " ",
  },
  arrow = {
    left = "",
    right = "",
    main_icon = "  ",
    vi_mode_icon = " ",
    position_icon = " ",
  },

  block = {
    left = " ",
    right = " ",
    main_icon = "   ",
    vi_mode_icon = "  ",
    position_icon = "  ",
  },

  round = {
    left = "",
    right = "",
    main_icon = "  ",
    vi_mode_icon = " ",
    position_icon = " ",
  },

  slant = {
    left = "",
    right = "",
    main_icon = "  ",
    vi_mode_icon = " ",
    position_icon = " ",
  },
}

M.section_a = {}
M.section_b = {}
M.section_y = {}
M.section_z = {}

local user_statusline_style = config.style
local statusline_style = icon_styles[user_statusline_style]
local empty = require('lualine.component'):extend()

local function ins_section_a(component)
  table.insert(M.section_a, component)
end

local function ins_section_b(component)
  table.insert(M.section_b, component)
end

local function ins_section_y(component)
  table.insert(M.section_y, component)
end

local function ins_section_z(component)
  table.insert(M.section_z, component)
end

function empty:draw(default_highlight)
  self.status = ' '
  self.icon = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

local mode_colors = {
  ["n"] = { "NORMAL", colors.red },
  ["no"] = { "N-PENDING", colors.red },
  ["i"] = { "INSERT", colors.dark_purple },
  ["ic"] = { "INSERT", colors.dark_purple },
  ["t"] = { "TERMINAL", colors.green },
  ["v"] = { "VISUAL", colors.cyan },
  ["V"] = { "V-LINE", colors.cyan },
  [""] = { "V-BLOCK", colors.cyan },
  ["R"] = { "REPLACE", colors.orange },
  ["Rv"] = { "V-REPLACE", colors.orange },
  ["s"] = { "SELECT", colors.nord_blue },
  ["S"] = { "S-LINE", colors.nord_blue },
  [""] = { "S-BLOCK", colors.nord_blue },
  ["c"] = { "COMMAND", colors.pink },
  ["cv"] = { "COMMAND", colors.pink },
  ["ce"] = { "COMMAND", colors.pink },
  ["r"] = { "PROMPT", colors.teal },
  ["rm"] = { "MORE", colors.teal },
  ["r?"] = { "CONFIRM", colors.teal },
  ["!"] = { "SHELL", colors.green },
}

ins_section_a {
  function()
    return  ""
  end,
  color = function()
  -- auto change color according to neovims mode
    return {
      fg = colors.black2,
      bg = mode_colors[vim.fn.mode()][2]
    }
  end,

  separator = { right = statusline_style.right }
}

-- custom separator
ins_section_a {
  empty,
  color = {
    fg = colors.lightbg,
    bg = colors.grey
  },
  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_a {
  function()
    local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    return "  " .. dir_name .. " "
  end,

  color = {
    fg = colors.grey_fg2,
    bg = colors.lightbg,
  },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_a {
  'diagnostics',

  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' '},

  color = { bg = colors.lightbg2 },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_b {
  function()
    return '%='
  end,
}

local spinners = {
  "",
  "",
  "",
}

local success_icon = {
  "",
  "󰗡",
  "",
}

ins_section_b {
  -- Lsp server name .
  function()
    local Lsp = vim.lsp.util.get_progress_messages()[1]
    if Lsp then
      local msg = Lsp.message or ""
      local percentage = Lsp.percentage or 0
      local title = Lsp.title or ""

      local ms = vim.loop.hrtime() / 1000000
      local frame = math.floor(ms / 120) % #spinners

      if percentage >= 70 then
        return string.format(" %%<%s %s %s (%s%%%%) ", success_icon[frame + 1], title, msg, percentage)
      else
        return string.format(" %%<%s %s %s (%s%%%%) ", spinners[frame + 1], title, msg, percentage)
      end
    end
    return ""
  end,
  icon = ' LSP:',
  color = { fg = colors.green },
}

-- only add component if overseer is loaded
if vim.fn.exists(':OverseerInfo') > 0 then

  local STATUS = require('overseer').constants.STATUS

  ins_section_b {
    "overseer",
    color = { fg = colors.blue },
    label = '',     -- Prefix for task counts
    colored = true, -- Color the task icons and counts
    symbols = {
      [STATUS.FAILURE]  = " Failure:  ",
      [STATUS.CANCELED] = " Canceled: 󱃓 ",
      [STATUS.SUCCESS]  = " Success:  ",
      [STATUS.RUNNING]  = " Running:  ",
      [STATUS.PENDING]  = " Pending:  ",
    },
    unique = true,     -- Unique-ify non-running task count by name
    name = nil,         -- List of task names to search for
    name_not = false,   -- When true, invert the name search
    status = nil,
    status_not = false, -- When true, invert the status search
  }
end

ins_section_y {
  'diff',
  symbols = {
    added = ' ',
    modified = ' ',
    removed = ' '
  }, -- Changes the symbols used by the diff.

  color = { bg = colors.lightbg2 },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_y {
  'branch',

  icon = "",

  color = {
      bg = colors.lightbg2,
      fg = colors.green
  },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_y {
  'fileformat',

  fmt = function() return string.format('') end,

  color = function()
    return {
      fg = colors.black,
      bg = mode_colors[vim.fn.mode()][2],
    }
  end,

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
}

ins_section_y {
  'progress',

  color = function()
    return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.lightbg,
    }
  end,

  separator = {
    left = statusline_style.left
  }
}

ins_section_z {
  'location',

  fmt = function ()
    -- local line = vim.fn.line('.')
    local column = vim.fn.col('.')
    return string.format("Column: %d", column)
  end,

  separator = {
    left = statusline_style.left
  },

  left_padding = 2,
  color = function()
    return {
      fg = colors.black2,
      bg = mode_colors[vim.fn.mode()][2]
    }
  end,
}

local get_win_width = vim.api.nvim_win_get_width

return M
