local utility_path = require("paths").utility

return {
  'rcarriga/nvim-notify',

  dependencies = {
    'nvim-telescope/telescope.nvim',
  },

  opts = require( utility_path .. 'notify.opts'),

  config = function(_, opts)
    require('telescope').load_extension('notify')
    vim.notify = require("notify")
    vim.notify.setup(opts)
  end
}
