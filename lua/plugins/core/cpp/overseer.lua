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
        -- Set keymap to false to remove default behavior
        -- You can add custom keymaps here as well (anything vim.keymap.set accepts)
        bindings = {
          ["<C-l>"] = false,
          ["<C-h>"] = false,
        },
      },

      preload_components = {
        'custom.open_trouble_on_failed',
        'custom.close_trouble',
        'custom.open_terminal'
      },

      component_aliases = {
        -- Tasks from tasks.json use these components
        default_vscode = {
          -- "default",
          'on_exit_set_status',
          {
            -- do not override trouble.nvim signs, underline and text
            "on_result_diagnostics",
            signs = false,
            underline = false,
            virtual_text = false,
          },
          'on_result_diagnostics_quickfix',
          'on_result_notify',
        },
      },
        -- templates = { "builtin", "cmake" },
    })

    local templates = require('config.overseer_templates_cfg')
    templates.add_custom_hooks_to_templates()
    end
  }

