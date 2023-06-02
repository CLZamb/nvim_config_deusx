local cur_path = require("paths").programming_languages .. "neotest."

return {
  "nvim-neotest/neotest",

  keys = {
    {
      "<Leader>gg",
      function()
        vim.cmd('OVSTestBuild')
      end,
      desc = "Run nearest test",
    },
  },

  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim"
  },

  opts = function()
    return require(cur_path .. 'opts')
  end
}
