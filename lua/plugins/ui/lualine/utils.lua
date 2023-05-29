local M = {}

M.empty = require('lualine.component'):extend()

M.ins_section = function(section, component)
  table.insert(section, component)
end

function M.empty:draw(default_highlight)
  self.status = ' '
  self.icon = ''
  self.applied_separator = ''
  self:apply_highlights(default_highlight)
  self:apply_section_separators()
  return self.status
end

return M
