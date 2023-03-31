local wk = require("which-key")

-- build and run vscode tasks
wk.register({
  ["o"] = {
    ['b'] = {"<cmd>OVSBuild<CR>",  "which_key_ignore" },
    ['r'] = {"<cmd>OVSRun<CR>",  "which_key_ignore" },
    ['c'] = {"<cmd>OVSBuildAndRun<CR>",  "which_key_ignore" },
    ['g'] = {"<cmd>OVSTestBuild<CR>",  "which_key_ignore" },
    ['f'] = {"<cmd>OverseerToggle<CR>",  "which_key_ignore" },
    ['t'] = {"<cmd>OverseerToggle<CR>",  "which_key_ignore" },
  },
}, { prefix = "<leader>" })
