return {
  'rcarriga/nvim-notify',

  dependencies = {
    'nvim-telescope/telescope.nvim',
  },

  config = function(_, _)
    require('telescope').load_extension('notify')
    vim.notify = require("notify")
    vim.notify.setup({
      stages = "fade_in_slide_out",
      timeout = 1000,
      background_colour = "#000000",
    })
  end
}
