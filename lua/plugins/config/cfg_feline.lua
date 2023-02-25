local Components = {
  -- Initialize the components table
  active = {},
  inactive = {},
}

local colors = require("ui.colors").get()
local lsp_severity = vim.diagnostic.severity

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
    left = " ",
    right = " ",
    main_icon = "  ",
    vi_mode_icon = " ",
    position_icon = " ",
  },
}

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

-- local chad_mode_hl = function()
  --   return {
    --     fg = mode_colors[vim.fn.mode()][2],
    --     bg = colors.one_bg,
    --   }
    -- end
    --
    -- local hide_statusline = function()
    --   local hidden = require("core.utils").load_config().plugins.options.statusline.hidden
    --   local shown = require("core.utils").load_config().plugins.options.statusline.shown
    --   local api = vim.api
    --   local buftype = api.nvim_buf_get_option("%", "ft")
    --
    --   -- shown table from config has the highest priority
    --   if vim.tbl_contains(shown, buftype) then
    --     api.nvim_set_option("laststatus", 2)
    --     return
    --   end
    --
    --   if vim.tbl_contains(hidden, buftype) then
    --     api.nvim_set_option("laststatus", 0)
    --     return
    --   else
    --     api.nvim_set_option("laststatus", 2)
    --   end
    -- end

    local config = { -- statusline related options
    -- these are filetypes, not pattern matched
    -- shown filetypes will overrule hidden filetypes
    hidden = {
      "help",
      "dashboard",
      -- "NvimTree",
      "terminal",
    },
    -- show short statusline on small screens
    -- shortline = true,
    shown = {},
    -- default, round , slant , block , arrow
    style = "default",
  }
  -- statusline style
  local user_statusline_style = config.style
  local statusline_style = icon_styles[user_statusline_style]
  -- if show short statusline on small screens
  local shortline = config.shortline == false and true
  local lsp = require "feline.providers.lsp"

  -- Initialize left, mid and right
  table.insert(Components.active, {})
  table.insert(Components.active, {})
  table.insert(Components.active, {})

  Components.active[1][1] = {
    provider = statusline_style.main_icon,

    hl = function()
      return {
        fg = colors.black2,
        bg = mode_colors[vim.fn.mode()][2],
      }
    end,

    right_sep = { str = statusline_style.right,
    hl = function()
      return {
        fg = mode_colors[vim.fn.mode()][2],
        bg = colors.grey,
      }
    end,
  },
}

Components.active[1][2] = {
  provider = function()
    local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
    return "  " .. dir_name .. " "
  end,
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 80
  end,
  hl = {
    fg = colors.grey_fg2,
    bg = colors.lightbg,
  },

  left_sep = {
    str = statusline_style.right,
    hl = {
      fg = colors.grey,
      bg = colors.lightbg
    }
  },
  right_sep = {
    str = statusline_style.right,
    hl = {
      fg = colors.lightbg,
      bg = colors.lightbg2
    }
  },
}

Components.active[1][3] = {
  provider = {
    name = "file_info",
  },

  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 40
  end,

  hl = {
    fg = colors.white,
    bg = colors.lightbg2,
  },

  right_sep = {
    {
      str = ' ',
      hl = {
        bg = colors.lightbg2
      }
    },
    {
      str = statusline_style.right,
      hl = {
        fg = colors.lightbg2,
      },
    },
  },
}

Components.active[1][4] = {
  provider = "diagnostic_errors",
  enabled = function()
    return lsp.diagnostics_exist(lsp_severity.ERROR)
  end,

  hl = { fg = "#E74C3C" },
  icon = "  ",
}

Components.active[1][5] = {
  provider = "diagnostic_warnings",
  enabled = function()
    return lsp.diagnostics_exist(lsp_severity.WARN)
  end,
  hl = { fg = "#F1C40F" },
  icon = "  ",
}

Components.active[1][6] = {
  provider = "diagnostic_hints",
  enabled = function()
    return lsp.diagnostics_exist(lsp_severity.HINT)
  end,
  hl = { fg = "#A3BA5E" },
  icon = "  ",
}

Components.active[1][7] = {
  provider = "diagnostic_info",
  enabled = function()
    return lsp.diagnostics_exist(lsp_severity.INFO)
  end,
  hl = { fg = "#7EA9A7" },
  icon = "  ",
}

Components.active[2][1] = {
  provider = function()
    local Lsp = vim.lsp.util.get_progress_messages()[1]
    if Lsp then
      local msg = Lsp.message or ""
      local percentage = Lsp.percentage or 0
      local title = Lsp.title or ""

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
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 80
  end,
  hl = { fg = colors.green },
}
--
Components.active[3][1] = {
  provider = statusline_style.left,
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
  end,
  hl = {
    fg = colors.grey,
    bg = colors.one_bg,
  },
}

Components.active[3][2] = {
  provider = statusline_style.left,
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
  end,

  hl = function()
    return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.grey,
    }
  end,
}

Components.active[3][3] = {
  provider = statusline_style.position_icon,
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
  end,

  hl = function()
    return {
      fg = colors.black,
      bg = mode_colors[vim.fn.mode()][2],
    }
  end,
}

Components.active[3][4] = {
  provider = function()
    local current_line = vim.fn.line "."
    local total_line = vim.fn.line "$"

    if current_line == 1 then
      return " Top "
    elseif current_line == vim.fn.line "$" then
      return " Bot "
    end
    local result, _ = math.modf((current_line / total_line) * 100)
    return " " .. result .. "%% "
  end,

  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 90
  end,

  hl = function()
    return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.one_bg,
    }
  end,
}

Components.active[3][5] = {
  provider = statusline_style.left,
  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 70
  end,

  hl = function()
    return {
      fg = mode_colors[vim.fn.mode()][2],
      bg = colors.one_bg,
    }
  end,
}

Components.active[3][6] = {
  provider = function()
    local current_column = vim.fn.col "."

    return "Col " .. current_column .. " "
  end,

  enabled = shortline or function(winid)
    return vim.api.nvim_win_get_width(tonumber(winid) or 0) > 70
  end,

  hl = function()
    return {
      fg = colors.black,
      bg = mode_colors[vim.fn.mode()][2],
    }
  end,
}
return Components
