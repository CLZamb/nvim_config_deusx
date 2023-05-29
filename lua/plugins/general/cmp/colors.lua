local c = require("ui.colors").get()
local M = {}

local fg_colors = {
  CmpItemMenu = "#7f8490",
  CmpItemAbbrDeprecated = c.grey_fg,
  CmpItemKindMethod = "#d38aea",
  CmpDocBorder = c.grey,
}

M.get_fg = function()
  return fg_colors
end

return M
