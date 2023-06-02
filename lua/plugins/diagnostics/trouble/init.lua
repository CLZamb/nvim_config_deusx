local cur_path = require("paths").diagnostics .. "trouble."

return {
  'folke/trouble.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  event = "VeryLazy",

  opts = require(cur_path .. "opts"),
}
