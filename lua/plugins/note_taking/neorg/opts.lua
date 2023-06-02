local M = {}

M.load = {
  ['core.defaults'] = {},           -- Loads default behaviour
  ['core.norg.concealer'] = {},     -- Adds pretty icons to your documents
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
}

return M
