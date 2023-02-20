local wk = require("which-key")

wk.register({
  ["w"] = {
    ["1"] = { ":tabn 1<CR>", "which_key_ignore"},
    ["2"] = { ":tabn 2<CR>", "which_key_ignore"},
    ["3"] = { ":tabn 3<CR>", "which_key_ignore"},
    ["4"] = { ":tabn 4<CR>", "which_key_ignore"},
    ["5"] = { ":tabn 5<CR>", "which_key_ignore"},
    ["6"] = { ":tabn 6<CR>", "which_key_ignore"},
    ["7"] = { ":tabn 7<CR>", "which_key_ignore"},
    ["8"] = { ":tabn 8<CR>", "which_key_ignore"},
    ["9"] = { ":tabn 9<CR>", "which_key_ignore"},
  };
}, { prefix = '<leader>', silent = true,})
