return {
  'rcarriga/nvim-notify',

  config = function(_, _)
    vim.notify = require("notify")
    vim.notify.setup({
      -- Animation style (see below for details)
      stages = "fade_in_slide_out",
      --
      -- Function called when a new window is opened, use for changing win settings/config
      -- on_open = nil,
      --
      -- Default timeout for notifications
      timeout = 1000,
      --
      -- For stages that change opacity this is treated as the highlight behind the window
      -- Set this to either a highlight group or an RGB hex value e.g. "#000000"
      -- background_colour = "#000000",
    })
  end
}
