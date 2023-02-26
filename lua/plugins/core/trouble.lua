return {
  'folke/trouble.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  event = "VeryLazy",

  config = function(_, _)
    require("trouble").setup {
      -- position = "top",
      -- width = 50,
      auto_preview = false,
      auto_close = true,
    }
  end
}
