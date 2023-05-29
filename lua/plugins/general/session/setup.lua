local general_path = require("paths").general_plugins

return {
  'rmagatti/auto-session',

  dependencies = {
    'nvim-telescope/telescope.nvim',
    'rmagatti/session-lens',
  },

  event = "VeryLazy",

  opts = require(general_path .. 'session.opts'),

  config = function(_, opts)
    require('auto-session').setup(opts)
    require('telescope').load_extension('session-lens')
  end
}
