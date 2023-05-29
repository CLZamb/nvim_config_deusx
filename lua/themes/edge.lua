return {
  'sainnhe/edge',

  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },

  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins

  config = function()
    local g = vim.g
    vim.cmd [[set background=dark]]

    -- -- Edge theme
    g.edge_style = 'aura'
    g.edge_enable_italic = true
    g.edge_diagnostic_text_highlight = true
    g.edge_diagnostic_line_highlight = true
    g.edge_diagnostic_virtual_text = 'colored'
    g.edge_current_word = 'bold'
    -- g.edge_better_performance = true
    g.edge_show_eob = false
    g.edge_spell_foreground = 'colored'

    local yellow_edge = "#e5c07b"
    g.edge_colors_override = {
      yellow = {
        yellow_edge,
        '250'
      },
    }

    -- -- UI CONFIGS
    vim.cmd[[colorscheme edge]]
  end,
}
