return {
  'navarasu/onedark.nvim',
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  enabled = false,
  config = function()
    vim.cmd[[colorscheme onedark]]
  end
}
