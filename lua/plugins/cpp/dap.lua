return {
  'mfussenegger/nvim-dap',

  dependencies = {
    'rcarriga/nvim-dap-ui',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-dap.nvim',
  },

  cmd = "DapContinue",

  config = function(_, _)
    local dap = require('dap')
    require('telescope').load_extension('dap')

    dap.adapters.cppdbg = {
      id = 'cppdbg',
      type = 'executable',
      -- command = cmd,
      -- command = vim.fn.stdpath('data') .. '/mason/bin/OpenDebugAD7',
      command = '/home/deusxdwm/.vscode/extensions/ms-vscode.cpptools-1.14.5-linux-x64/debugAdapters/bin/OpenDebugAD7' ,
      options = {
        detached = false
      }
    }

    dap.configurations.cpp = {
      {
        name = "vscode-cpptools_launch",
        type = "cppdbg",
        request = "launch",
        program = '${workspaceFolder}/debug/bin/Chess',
        -- program = function()
        --   return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/debug/bin/', 'file')
        -- end,
        linux = {
          MIMode =  "gdb",
          miDebuggerPath = "/usr/bin/gdb",
        },
        cwd = '${workspaceFolder}',
        -- stopAtEntry = true,
        externalConsole = true,
        logging = {
          moduleLoad = false,
          trace =  true
        },
      },
    }

    dap.defaults.fallback.external_terminal = {
      command = 'kitty';
      args = {
        '-T' ,
        'Nvim Dap',
        '-o',
        'initial_window_width=1640',
        '-o',
        'initial_window_height=1180',
        '-e'
      };
    }
    dap.defaults.fallback.focus_terminal = false

    local dap_ui = require("dapui")
    dap_ui.setup()

    dap.listeners.after.event_initialized["dapui_config"] = function()
      dap_ui.open()
    end
    dap.listeners.before.event_terminated["dapui_config"] = function()
      dap_ui.close()
    end
    dap.listeners.before.event_exited["dapui_config"] = function()
      dap_ui.close()
    end

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "dap-repl",
      callback = function(args)
        vim.api.nvim_buf_set_option(args.buf, "buflisted", false)
      end,
    })
  end
}
