local ui_path = require("paths").split_and_window

return {
  "anuvyklack/windows.nvim",
  event = "WinNew",
  dependencies = {
    { "anuvyklack/middleclass" },
    { "anuvyklack/animation.nvim", enabled = true },
  },

  keys = { { "<leader>m", "<cmd>WindowsMaximize<CR>", desc = "Zoom window" } },

  init = function()
    vim.o.winwidth = 30
    vim.o.equalalways = true
  end,

  opts = require( ui_path .. 'window.opts'),
}
