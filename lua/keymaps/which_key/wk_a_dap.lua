local wk = require("which-key")

wk.register({
  ["a"] = {
    name = '+Dap',
    ["c"] = {":DapContinue<CR>" , 'Continue'},
    ["t"] = {"lua require('dapui').toggle()<CR>" , 'Continue'},
    ["s"] = {":DapTerminate<CR>" , 'Stop'},
    ["b"] = {":DapToggleBreakpoint<CR>", 'Toggle breakpoint'},
    ["i"] = {":DapStepInto<CR>", 'Step Into'},
    ["o"] = {":DapStepOver<CR>", 'Step Over'},
    ["u"] = {":DapStepOut<CR>", 'Step Out'},
    ["r"] = {":DapToggleRepl<CR>" , 'Toggle Repl'},
    ["l"] = {"<Cmd>lua require'dap'.run_last()<CR>", 'run last'},
  },
}, { prefix = "<leader>" })
