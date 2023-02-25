local wk = require("which-key")

wk.register({
  -- increase window size
  ["+"] = { ":exe \"vertical resize \" . (winheight(0) + 5)<cr>" , "which_key_ignore"},
  ["-"] = { ":exe \"vertical resize \" . (winheight(0) - 5)<cr>" , "which_key_ignore"},
  -- remove highlighht from search 
  ["/"] = { ":noh<cr>" , "which_key_ignore"},
  -- go to # bufgfer
  ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "which_key_ignore"},
  ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "which_key_ignore"},
  ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "which_key_ignore"},
  ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "which_key_ignore"},
  ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "which_key_ignore"},
  ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "which_key_ignore"},
  ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "which_key_ignore"},
  ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "which_key_ignore"},
  ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "which_key_ignore"},
  -- pick a buffer
  ["0"] = { ":BufferLinePick<CR>", "which_key_ignore"},
  -- Close current buffer without closing the windows
  ["q"] = {":Bclose!<cr>", "which_key_ignore"},
  ['n'] = {":NvimTreeToggle<cr>", "Nvim Toggle"},
  -- find files
  -- build and run vscode tasks
  ['b'] = {"<cmd>OVSBuild<CR>",  "which_key_ignore" },
  ['c'] = {"<cmd>OVSBuildAndRun<CR>",  "which_key_ignore" },
  ['d'] = {'<cmd>TroubleToggle workspace_diagnostics<cr>' , 'Trouble toggle'},
  ['f'] = {"<cmd>Telescope find_files<cr>",  "Telescope file finder" },
  -- search erros/warnings on workspace diagnostic
  ['r'] = {"<cmd>OVSRun<CR>",  "which_key_ignore" },
  -- test cpp
  ['g'] = {"<cmd>OVSTestBuildAndRun<CR>",  "which_key_ignore" },

}, { prefix = '<leader>', silent = true,})
