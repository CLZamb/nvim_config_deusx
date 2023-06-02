local M = {}

local cmd = vim.cmd

-- Define bg color
-- @param group Group
-- @param color Color
M.bg = function(group, col)
   cmd("hi " .. group .. " guibg=" .. col)
end

-- Define fg color
-- @param group Group
-- @param color Color
M.fg = function(group, col)
  cmd("hi " .. group .. " guifg=" .. col)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
M.fg_bg = function(group, fgcol, bgcol)
   cmd("hi " .. group .. " guifg=" .. fgcol .. " guibg=" .. bgcol)
end

-- Define bg and fg color
-- @param group Group
-- @param fgcol Fg Color
-- @param bgcol Bg Color
M.fg_groups = function(highlights)
  for group, color in pairs(highlights) do
    M.fg(group, color)
  end
end

M.bg_groups = function(highlights)
  for group, color in pairs(highlights) do
    M.bg(group, color)
  end
end

M.fg_bg_groups = function(highlights)
  for group, colors in pairs(highlights) do
      M.fg_bg(group, colors[1], colors[2])
  end
end

return M
