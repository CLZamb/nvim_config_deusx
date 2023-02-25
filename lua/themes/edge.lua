return {
  'sainnhe/edge',

  dependencies = {
    'nvim-treesitter/nvim-treesitter'
  },

  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    local g = vim.g

    -- Edge theme
    g.edge_style = 'aura'
    g.edge_enable_italic = true
    g.edge_diagnostic_text_highlight = true
    g.edge_diagnostic_line_highlight = true
    g.edge_diagnostic_virtual_text = 'colored'
    g.edge_current_word = 'bold'
    g.edge_better_performance = true
    -- g.edge_transparent_background = true
    --
    -- UI CONFIGS
    g.ui = { theme = "onedark", }
    vim.cmd[[colorscheme edge]]
  end,
}
