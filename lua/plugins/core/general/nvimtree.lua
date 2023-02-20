return {
  'nvim-tree/nvim-tree.lua',

  dependencies = 'nvim-tree/nvim-web-devicons',

  config = function(_, _)
    -- -- following options are the default
    require'nvim-tree'.setup {
      -- ignore_ft_on_setup  = { "dashboard", ".cache", ".git", "node_modules" },
      diagnostics = {
        enable = true,
        show_on_dirs = true,
      },
      update_focused_file = {
        ignore_list = { "dashboard", ".cache", ".git", "node_modules" },
      },
      view = {
        side = "right",
        width = '17%',
        hide_root_folder = true,
      },
      renderer = {
        highlight_opened_files = "all",

        icons = {
          show = {
            git = false,
          },
        }
      },
    }
  end
}
