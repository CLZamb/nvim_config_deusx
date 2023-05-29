local ui_path = require("paths").ui_plugins

return {
  'akinsho/bufferline.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
    {'tiagovla/scope.nvim', config = true}
  },

  opts = require(ui_path .. "bufferline.opts"),
}
