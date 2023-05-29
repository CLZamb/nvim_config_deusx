local ui_path = require("paths").ui_plugins

return {
  'folke/noice.nvim',

  dependencies = 'MunifTanjim/nui.nvim',

  opts = require(ui_path .. "noice.opts"),
}
