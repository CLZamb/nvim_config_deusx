return {
  'folke/tokyonight.nvim',

  priority = 1000, -- make sure to load this before all the other start plugins
  enabled = false,

  config = function()
    -- -- UI CONFIGS
    vim.cmd[[colorscheme tokyonight-storm]]
  end,
}
