local M = {}

M.close_if_last_window = false

M.enable_git_status = false

M.hide_root_node = true

M.retain_hidden_root_indent = true

M.window = {
  -- position = "right",
  width = '17%',
}

M.default_component_configs = {
  icon = {
    folder_closed = "",
    folder_open = "",
  },
  indent = {
    indent_size = 2,
    with_markers = false,
    with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
    expander_collapsed = "",
    expander_expanded = "",
    expander_highlight = "NeoTreeExpander",
  },
  diagnostics = {
    highlights = {
      hint = "DiagnosticSignHint",
      info = "DiagnosticSignInfo",
      warn = "DiagnosticSignWarn",
      error = "DiagnosticSignError",
    },
  },
  modified = {
    symbol = "",
  },
}

M.filesystem = {
  renderers = {
    directory = {
      { "indent" },
      { "icon" },
      { "current_filter" },
      {
        "container",
        width = "100%",
        content = {
          { "name",        zindex = 40 },
          { "diagnostics", zindex = 30, align = "left" },
          { "clipboard",   zindex = 20 },
          { "git_status",  zindex = 10, align = "left" },
        },
      },
    },
    file = {
      { "indent" },
      { "icon" },
      {
        "container",
        width = "100%",
        content = {
          {
            "name",
            use_git_status_colors = true,
            zindex = 100,
          },
          { "diagnostics", zindex = 50, align = "left" },
          { "modified",    zindex = 10 },
          { "bufnr",       zindex = 30 },
          { "clipboard",   zindex = 20 },
          { "git_status",  zindex = 40, align = "left" },
        },
      },
    },
  },
}


return M
