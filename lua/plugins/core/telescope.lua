return {
  'nvim-telescope/telescope.nvim',

  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzy-native.nvim',
    'nvim-telescope/telescope-file-browser.nvim',
  },

  config = function(_, _)
    require('telescope').setup {
      defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        sorting_strategy = "ascending",
        layout_strategy = 'horizontal',
        layout_config = {
          prompt_position = "top",
        },
      },
      pickers = {
        buffers = {
          theme = "dropdown",
          previewer = false,
          mappings = {
            i = {
              ["<c-d>"] = "delete_buffer",
              ["<c-a>"] = "toggle_all",
            },
            n = {
              ["d"] = "delete_buffer",
              ["s"] = "toggle_selection",
              ["a"] = "toggle_all"
            },
          }
        },
        file_browser = {
          theme = "dropdown",
          previewer = false,
        }
      },
      extensions = {
        fzy_native = {
          override_generic_sorter = false,
          override_file_sorter = true,
        },

        file_browser = {
          theme = "dropdown",
          -- mappings = {
            -- ["i"] = {
              --   ["<A-e>"] = fb_actions.toggle_all,
              --   ["<C-d>"] = fb_actions.remove_file,
              --   ["<C-e>"] = fb_actions.create_file,
              --   ["<C-f>"] = fb_actions.toggle_browser,
              --   ["<C-g>"] = fb_actions.goto_parent_dir,
              --   ["<C-h>"] = fb_actions.toggle_hidden,
              --   ["<C-o>"] = fb_actions.open_file,
              --   ["<C-r>"] = fb_actions.rename_file,
              --   ["<C-w>"] = fb_actions.goto_cwd,
              --   ["<C-y>"] = fb_actions.copy_file,
              -- },
              -- ["n"] = {
                --   ["dd"] = fb_actions.remove_file,
                --   ["e"] = fb_actions.create_file,
                --   ["f"] = fb_actions.toggle_browser,
                --   ["g"] = fb_actions.goto_parent_dir,
                --   ["h"] = fb_actions.toggle_hidden,
                --   ["m"] = fb_actions.move_file,
                --   ["o"] = fb_actions.open_file,
                --   ["r"] = fb_actions.rename_file,
                --   ["w"] = fb_actions.goto_cwd,
                --   ["y"] = fb_actions.copy_file,
                -- },
                --},
              },
            },
          }

          require('telescope').load_extension('fzy_native')
          require('telescope').load_extension('file_browser')

          local builtin = require 'telescope.builtin'
          local themes = require 'telescope.themes'

          local M = {}

          local search_in = function(opts)
            opts.previewer = false
            builtin.find_files(themes.get_dropdown(opts))
          end

          M.search_dotfiles = function()
            search_in({
              prompt_title = "< Nvim Files >",
              cwd = "$HOME/.config/nvim/",
            })
          end

          M.search_vim_files = function()
            search_in({
              prompt_title = "< Vim Files >",
              cwd = "$HOME/.vim/",
            })
          end

          return M
  end
}
