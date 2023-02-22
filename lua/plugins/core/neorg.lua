return {
  "nvim-neorg/neorg",

  dependencies = {
    'nvim-lua/plenary.nvim' ,
  },

  ft = 'norg',

  build = ':Neorg sync-parsers',

  opts = {
    load = {
      ['core.defaults'] = {}, -- Loads default behaviour
      ['core.norg.concealer'] = {}, -- Adds pretty icons to your documents
      ['core.norg.dirman'] = {
        config = {
          workspaces = {
            notes = "~/Code/notes"
          },
        },
      },
      ['core.norg.completion'] = {
        config = {
          engine = "nvim-cmp",
        },
      },
    },
  },
}
