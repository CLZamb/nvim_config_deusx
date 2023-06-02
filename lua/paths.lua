local M = {}

M.paths_names = {
  autocommands = {},
  keymaps = { "which_key" },
  overseer = {
    "component",
    "template",
    "utils",
  },
  plugins = {
    "bars_and_lines",
    "completion",
    "diagnostics",
    "editor_support",
    "file_explorer",
    "fuzzy_finder",
    "git",
    "icon",
    "indent",
    "keybinding",
    "lsp",
    "marks",
    "note_taking",
    "programming_languages",
    "split_and_window",
    "startup",
    "statusline",
    "syntax",
    "tabline",
    "terminal_integration",
    "themes",
    "utility",
  },
  settings = {},
  ui = {
    "highlights"
  },
}

for name, path_table in pairs(M.paths_names) do
  if type(path_table) == "table" then
    for _, v in pairs(path_table) do
      M[v] = name .. "." .. v .. "."
    end
  end
    M[name] = name .. "."
end

return M
