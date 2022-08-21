local g = vim.g

-- Do not touch
-- -- Do not touch
--
-- g.nvim_tree_indent_markers = 1
-- g.nvim_tree_quit_on_open = 0 -- closes tree when file's opened
-- g.nvim_tree_disable_window_picker = 0
-- g.nvim_tree_ignore = { ".git", "node_modules", ".cache" }
-- nvim_tree_ignore, nvim_tree_gitignore
-- g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }
-- g.nvim_tree_window_picker_exclude = {
  --     \   'filetype': [
  --     \     'notify',
  --     \     'packer',
  --     \     'qf'
  --     \   ],
  --     \   'buftype': [
  --     \     'terminal'
  --     \   ]
  --     \ }

  -- -- following options are the default
  require'nvim-tree'.setup {
    disable_netrw       = true,
    hijack_netrw        = true,
    open_on_setup       = true,
    ignore_ft_on_setup  = { "dashboard", ".cache", ".git", "node_modules" },
    -- auto_close          = false,
    open_on_tab         = false,
    hijack_cursor       = false,
    update_cwd          = false,
    -- update_to_buf_dir   = {
      --   enable = false,
      --   auto_open = false,
      -- },
      diagnostics = {
        enable = false,
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        }
      },
      filters = {
        dotfiles = false,
      },
      update_focused_file = {
        enable = false,
        update_cwd = false,
        ignore_list = { "dashboard", ".cache", ".git", "node_modules" },
      },
      view = {
        -- allow_resize = true,
        side = "left",
        width = '17%',
        hide_root_folder = true,
        -- auto_resize = true,
      },
      system_open = {
        cmd  = nil,
        args = {}
      },
      git = {
        enable = true,
        ignore = true,
      },
      renderer = {
        add_trailing = false,
        highlight_opened_files = "all",
        highlight_git = false,

        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = false,
          },
        }
      },
    }
