local ui_path = require("paths").tabline

return {
  'akinsho/bufferline.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {'tiagovla/scope.nvim', config = true}
  },

  opts = require(ui_path .. "bufferline.opts"),
}
