return {
  "nvim-neotest/neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim"
  },

  config = function()
    require('neotest').setup({
      -- consumers = {
      --   overseer = require("neotest.consumers.overseer"),
      -- },
      --
      adapters = {
        require("neotest-gtest"),
      },
      quickfix = {
        enabled = false,
      },
      status = {
        signs = false,
        virtual_text = true
      },
      icons = {
        passed = "",
        running = "",
        running_animated = { "", "🞅", "🞈", "🞉", "", "", "🞉", "🞈", "🞅", "", },
        failed = "",
        unknown = ""
      },
    })
  end,
}
