local colors = require("ui.colors").get()
local M = {}

local fg_colors = {
  DashboardCenter = colors.red,
  DashboardFooter = colors.green,
  DashboardHeader = colors.white,
  DashboardShortcut = colors.blue,
}

M.get_fg = function()
  return fg_colors
end

return M
