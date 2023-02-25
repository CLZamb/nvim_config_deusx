return {
  'nvim-tree/nvim-tree.lua',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
    's1n7ax/nvim-window-picker',
  },

  config = function(_, _)
    local window_picker =  require('window-picker')

    require'nvim-tree'.setup {
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      update_focused_file = {
        ignore_list = {
          "dashboard",
          ".cache",
          ".git",
          "node_modules",
          "lualine"
        },
      },
      view = {
        adaptive_size = true,
        width = '18%',
        hide_root_folder = true,
        side = "right",
      },
      renderer = {
        highlight_opened_files = "all",
        icons = {
          show = {
            git = false,
          },
        }
      },
      actions = {
        open_file = {
          window_picker = {
            picker = function()
              return window_picker.pick_window()
            end,
          },
        },
        remove_file = {
          close_window = false,
        },
      }
    }
  end
}
