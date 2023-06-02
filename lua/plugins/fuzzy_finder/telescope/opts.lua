local M = {}

M.defaults = {
  -- Appearance
  entry_prefix = "  ",
  prompt_prefix = "   ",
  selection_caret = "  ",
  color_devicons = true,
  -- path_display = { "smart" },
  dynamic_preview_title = true,
  file_sorter = require("telescope.sorters").get_fzy_sorter,
  sorting_strategy = "ascending",
  layout_strategy = 'horizontal',
  layout_config = {
    horizontal = {
      preview_width = 0.55,
      prompt_position = "top",
      width = 0.9,
    },
    center = {
      anchor = "N",
      width = 0.9,
      preview_cutoff = 10,
    },
    vertical = {
      height = 0.9,
      preview_height = 0.3,
      width = 0.9,
      preview_cutoff = 10,
      prompt_position = "top",
    },
  },
  file_ignore_patterns = {
    ".git/",
    "%.csv",
    "%.jpg",
    "%.jpeg",
    "%.png",
    "%.svg",
    "%.otf",
    "%.ttf",
    "%.lock",
    "__pycache__",
    "%.sqlite3",
    "%.ipynb",
    "vendor",
    "node_modules",
    "dotbot",
  },
}

M.pickers = {
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
}

M.extensions = {
  fzy_native = {
    override_generic_sorter = false,
    override_file_sorter = true,
  },
  file_browser = {
    theme = "dropdown",
  },
  persisted = {
    layout_config = { width = 0.55, height = 0.55 }
  }
}

return M
