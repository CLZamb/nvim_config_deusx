local paths = require("paths")

local M = {}

M.spec = {
  {import = 'overseer.setup'},
}

for _, name in pairs(paths.paths_names.plugins) do
  table.insert(M.spec, {import = paths[name]} )
end

M.checker = {
  enabled = true,
  notify = false, -- get a notification when new updates are found
  frequency = 28800, -- check for updates every 8 hour
}

M.change_detection = { notify = false }

M.performance = {
  rtp = {
    disabled_plugins = {
      "gzip",
      "matchit",
      "matchparen",
      "netrwPlugin",
      "tarPlugin",
      "tohtml",
      "tutor",
      "zipPlugin",
    },
  },
}

return M
