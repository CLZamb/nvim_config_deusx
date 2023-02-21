return {
  'folke/noice.nvim',

  dependencies = 'MunifTanjim/nui.nvim',

  config = function(_, _)
    require("noice").setup({
      lsp = {
        progress = {
          enabled = false,
        },
        signature = {
          enabled = false,
        },
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
        command_palette = {
          views = {
            cmdline_popup = {
              position = {
                row = 8,
                col = "50%",
              },
              size = {
                width = 50,
              },
              border = {
                style = "rounded",
                -- height, width
                padding = { 0, 1 },
              },
              filter_options = {},
            },
            popupmenu = {
              relative = "editor",
              position = {
                row = 11,
                col = "50%",
              },
              size = {
                width = 60,
                height = "auto",
                max_height = 15,
              },
              border = {
                style = "rounded",
                padding = { 0, 1 },
              },
              win_options = {
                winhighlight = { Normal = "NormalFloat", FloatBorder = "FloatBorder" },
              },
            },
          },
        },
      },
      messages = {
        enabled = false, -- enables the Noice messages UI
      },
      cmdline = {
        format = {
          cmdline = { icon = "  " , title = "" },
        }
      }
    })
  end
}
