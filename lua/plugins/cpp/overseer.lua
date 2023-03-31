return {
  'stevearc/overseer.nvim',

  dependencies = {
    'stevearc/dressing.nvim',
    'nvim-telescope/telescope.nvim',
    'rcarriga/nvim-notify',
    'folke/trouble.nvim',
    'nvim-neotest/neotest',
  },

  ft = { 'cpp', 'h', 'hpp' },

  config = function(_, _)
    local overseer_cfg = require('plugins.config.cfg_overseer_setup')
    local templates = require('plugins.config.cfg_overseer_templates')

    require("overseer").setup(overseer_cfg)

    templates.add_custom_hooks_to_templates()

    require('custom_commands.overseer_vscode_commands')
  end
}

