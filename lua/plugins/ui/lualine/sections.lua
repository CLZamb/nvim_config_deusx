local ui_path = require("paths").ui_plugins
local colors = require(ui_path .. "lualine.colors").get()
local statusline_style = require(ui_path .. "lualine.icons")
local empty = require(ui_path .. "lualine.utils").empty
local ins_section = require(ui_path .. "lualine.utils").ins_section

local M = {}

M.section_a = {}
M.section_b = {}
M.section_y = {}
M.section_z = {}

local mode_colors = {
  ["n"] = { "NORMAL", colors.normal },
  ["no"] = { "N-PENDING", colors.n_pendind },
  ["i"] = { "INSERT", colors.insert },
  ["ic"] = { "INSERT", colors.insert_c },
  ["t"] = { "TERMINAL", colors.terminal },
  ["v"] = { "VISUAL", colors.visual },
  ["V"] = { "V-LINE", colors.visual_line },
  [""] = { "V-BLOCK", colors.visual_block },
  ["R"] = { "REPLACE", colors.replace },
  ["Rv"] = { "V-REPLACE", colors.v_replace },
  ["s"] = { "SELECT", colors.select },
  ["S"] = { "S-LINE", colors.s_line },
  [""] = { "S-BLOCK", colors.s_block },
  ["c"] = { "COMMAND", colors.command },
  ["cv"] = { "COMMAND", colors.command_v },
  ["ce"] = { "COMMAND", colors.command_e },
  ["r"] = { "PROMPT", colors.prompt },
  ["rm"] = { "MORE", colors.more },
  ["r?"] = { "CONFIRM", colors.confirm },
  ["!"] = { "SHELL", colors.shell },
}

ins_section(M.section_a, {
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
ins_section(M.section_a, {
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

ins_section(M.section_a, {
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

ins_section(M.section_a, {
  'diagnostics',

  symbols = { error = ' ', warn = ' ', info = ' ', hint = ' '},

  color = { bg = colors.diagnostic_bg },

  separator = {
    right = statusline_style.right,
    left = statusline_style.left
  }
})

ins_section(M.section_b, {
  function()
    return '%='
  end,
})

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

ins_section(M.section_b, {
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
  color = { fg = colors.server_name_fg },
})

-- only add component if overseer is loaded
if vim.fn.exists(':OverseerInfo') > 0 then

  local STATUS = require('overseer').constants.STATUS

  ins_section(M.section_b, {
    "overseer",
    color = { fg = colors.overseer_fg },
    label = " ",     -- Prefix for task counts
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
  })
end

ins_section(M.section_y, {
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

ins_section(M.section_y, {
  require("lazy.status").updates,
  cond = require("lazy.status").has_updates,
  color = { fg = "#ff9e64" },
})

ins_section(M.section_y, {
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

ins_section(M.section_y, {
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

ins_section(M.section_y, {
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

ins_section(M.section_z, {
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
      fg = colors.location,
      bg = mode_colors[vim.fn.mode()][2]
    }
  end,
})

-- local get_win_width = vim.api.nvim_win_get_width

return M
