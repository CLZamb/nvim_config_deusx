return {
  'kylechui/nvim-surround',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },

  config = function()
    require("nvim-surround").setup({
      keymaps =       {
        normal_cur = false,
        normal_line = false,
      }
    })
  end
}
