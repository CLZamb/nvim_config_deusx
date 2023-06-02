local M = {}

M.lsp = {
  progress = {
    enabled = false,
  },
  signature = {
    enabled = false,
  },
  override = {
    ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
    ["vim.lsp.util.stylize_markdown"] = true,
    ["cmp.entry.get_documentation"] = true,
  },
}

M.presets = {
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
        border = {
          style = "rounded",
          padding = { 0, 1 },
        },
        filter_options = {},
      },
      popupmenu = {
        relative = ".editor",
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
}

M.messages = {
  enabled = false, -- enables the Noice messages UI
}

M.cmdline = {
  format = {
    cmdline = { icon = "  " , title = "" },
    search_down = { title = ""},
    search_up = { title = ""},
    lua = { title = ""},
    filter = { title = ""},
    help = { title = ""},
    input = { title = ""},
  }
}

return M
