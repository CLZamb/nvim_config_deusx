return {
  'stevearc/overseer.nvim',

  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-telescope/telescope.nvim',
    'rcarriga/nvim-notify',
    'folke/trouble.nvim',
  },

  ft = { 'cpp', 'h', 'hpp' },

  opts = require('overseer.opts'),

  config = function(_, opts)
    require('overseer.hooks').add_custom_hooks_to_templates()
    require("overseer").setup(opts)
    require("overseer.utils.overseer_vscode_commands")
  end
}

