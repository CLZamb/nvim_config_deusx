local M = {}

M.adapters = {
  require("neotest-gtest"),
}

M.quickfix = {
  enabled = false,
}

M.status = {
  signs = false,
  virtual_text = true
}

M.icons = {
  passed = "",
  running = "",
  running_animated = { "", "🞅", "🞈", "🞉", "", "", "🞉", "🞈", "🞅", "", },
  failed = "",
  unknown = ""
}

return M
