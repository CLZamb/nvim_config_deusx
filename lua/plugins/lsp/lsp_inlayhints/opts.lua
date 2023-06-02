local M = {}

M.enabled_at_startup = true

M.inlay_hints = {
  highlight = "LspInlayHint",
  labels_separator = " ⏐ ",
  parameter_hints = { prefix = "" },
  type_hints = { prefix = "=> ", remove_colon_start = true },
}

return M
