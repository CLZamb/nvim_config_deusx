local wk = require("which-key")

wk.register({
  ["T"] = {
    name = '+Trouble',
    ["w"] = {'<cmd>TroubleToggle workspace_diagnostics<cr>', 'Diagnositc workspace'},
    ["d"] = {'<cmd>TroubleToggle document_diagnostics<cr>', 'diagnostic document'},
    ["q"] = {'<cmd>TroubleToggle quickfix<cr>', 'Quickfix'},
    ["l"] = {'<cmd>TroubleToggle loclist<cr>', 'Loclist'},
    ["r"] = {'<cmd>TroubleToggle lsp_references<cr>', 'References'},
  },
}, { prefix = "<leader>" })
