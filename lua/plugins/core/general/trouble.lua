return {
  'folke/trouble.nvim',

  dependencies = {
    'nvim-tree/nvim-web-devicons'
  },

  config = function(_, _)
    require("trouble").setup {
      position = "right",
      width = 50,
      auto_preview = false,
      -- auto_close = true,
    }
  end
}
-- %A%f:%l:%c:\ %m,%-G%.%#
