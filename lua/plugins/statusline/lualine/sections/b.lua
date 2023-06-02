local ui_path = require("paths").statusline
local ins_section = require(ui_path .. "lualine.utils").ins_section
local colors = require(ui_path .. "lualine.colors").get()

local M_section_b = {}

ins_section(M_section_b, {
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

ins_section(M_section_b, {
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

  ins_section(M_section_b, {
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

return M_section_b
