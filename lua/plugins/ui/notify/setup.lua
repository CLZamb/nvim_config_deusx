local ui_path = require("paths").ui_plugins

return {
  'rcarriga/nvim-notify',

  dependencies = {
    'nvim-telescope/telescope.nvim',
  },

  opts = require( ui_path .. 'notify.opts'),

  config = function(_, opts)
    require('telescope').load_extension('notify')
    vim.notify = require("notify")
    vim.notify.setup(opts)
  end
}
