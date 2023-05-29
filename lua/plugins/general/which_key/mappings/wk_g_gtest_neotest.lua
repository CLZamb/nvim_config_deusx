local wk = require("which-key")

wk.register({
  ["g"] = {
    name = '+Neotest',
    -- ['g'] = {"<cmd>OVSTestBuild<CR>",  "run" },
    ["t"] = {":lua require('neotest').output_panel.toggle()<CR>" , 'output panel toggle'},
    ["o"] = {":lua require('neotest').output.open({ enter = false})<CR>" , 'output open'},
    ["s"] = {":lua require('neotest').summary.toggle()<CR>" , 'summary toggle'},
    ["p"] = {":lua require('neotest').jump.prev({ status = 'failed' })<CR>" , 'previous failed test'},
    ["n"] = {":lua require('neotest').jump.next({ status = 'failed' })<CR>" , 'next failed test'},
  },
}, { prefix = "<leader>" })
