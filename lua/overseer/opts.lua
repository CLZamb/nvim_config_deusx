local M = {}

M.task_list = {
  direction = 'p',
  bindings = {
    ["<C-l>"] = false,
    ["<C-h>"] = false,
  },
}

M.preload_components = {
  'custom.open_trouble_on_failed',
  'custom.close_trouble',
  'custom.run_neotest',
}
-- M.strategy = { "jobstart" }

M.component_aliases = {
  default_vscode = {
    -- "default",
    'on_exit_set_status',
    {
      "on_result_diagnostics",
      -- do not override trouble.nvim signs, underline and text
      signs = false,
      underline = false,
      virtual_text = false,
    },
    'on_result_diagnostics_quickfix',
  },
}

M.form = {
  win_opts = {
    winblend = 0,
  },
}

return M
