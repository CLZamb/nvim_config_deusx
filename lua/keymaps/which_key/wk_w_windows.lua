local wk = require("which-key")

wk.register({
  ['w'] = {
    name = '+Windows ' ,
    ["d"] = {"<C-W>c" , "delete-window"},
    ["v"] = {"<C-W>v" , "layout-double-columns"},
    ["H"] = {"<C-W>5<" , "expand-window-left"},
    ["J"] = {"resize +5" , "expand-window-below"},
    ["L"] = {"<C-W>5>" , "expand-window-right"},
    ["K"] = {"resize -5" , "expand-window-up"},
    ["="] = {"<C-W>=" , "balance-window"},
    ["s"] = {"<C-W>s" , "split-window-below"},
    ["V"] = {"<C-W>v" , "split-window-below"},
    ["l"] = {"<C-W>v<C-W>r" , "split-window-left"},
    ["r"] = {"<C-W>r" , "rotate window downwards/rightwards"},
    ["R"] = {"<C-W>R" , "rotate window upwards/leftwards"},

  },
}, { prefix = '<leader>', silent = true,})

