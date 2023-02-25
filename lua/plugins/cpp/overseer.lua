return {
  'stevearc/overseer.nvim',

  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-telescope/telescope.nvim',
    'rcarriga/nvim-notify',
    'folke/trouble.nvim',
    'akinsho/toggleterm.nvim',
  },

  ft = { 'cpp', 'h', 'hpp' },

  config = function(_, _)
    local overseer = require("overseer")
    overseer.setup({

      task_list = {
        direction = 'right',
        bindings = {
          ["<C-l>"] = false,
          ["<C-h>"] = false,
        },
      },

      preload_components = {
        'custom.open_trouble_on_failed',
        'custom.close_trouble',
      },

      component_aliases = {
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
      },
    })

    local templates = require('plugins.config.cfg_overseer_templates')
    templates.add_custom_hooks_to_templates()
  end
}

