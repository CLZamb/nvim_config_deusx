return {
  'folke/which-key.nvim',

  event = "VeryLazy",

  opts = {
    plugins = {
      spelling = {
        enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
        -- suggestions = 20, -- how many suggestions should be shown in the list?
      },
      marks = false, -- shows a list of your marks on ' and `
      presets = {
        operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
        motions = false, -- adds help for motions
        text_objects = false, -- help for text objects triggered after entering an operator
        windows = false, -- default bindings on <c-w>
        nav = false, -- misc bindings to work with windows
        z = false, -- bindings for folds, spelling and others prefixed with z
        g = false, -- bindings for prefixed with g
      },
    },
    window = {
      border = "single", -- none, single, double, shadow
      winblend = 0,
    },
    layout = {
      align = "center", -- align columns left, center or right
    },
    key_labels = { ["<leader>"] = "SPC" },
    ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  },
}
