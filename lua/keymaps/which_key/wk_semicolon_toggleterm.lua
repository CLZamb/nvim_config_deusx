local wk = require("which-key")

wk.register({
  [';'] = {
    name = '+terminal' ,
    [":"] = {":FloatermNew --wintype=normal --height=6<cr>" , "terminal"},
    ["z"] = {":FloatermNew fzf<cr>" , "fzf"},
    ["g"] = {":FloatermNew lazygit<cr>" , "git"},
    ["d"] = {":FloatermNew lazydocker<cr>" , "docker"},
    ["n"] = {":FloatermNew node<cr>" , "node"},
    ["N"] = {":FloatermNew nnn<cr>" , "nnn"},
    ["p"] = {":FloatermNew python<cr>" , "python"},
    ["r"] = {":FloatermNew ranger<cr>" , "ranger"},
    [";"] = {":FloatermToggle<cr>" , "toggle"},
  },
}, { prefix = "<leader>" })
