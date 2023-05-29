local wk = require("which-key")

wk.register({
  ["z"] = {
    name = '+LazyNvim ',
    ["i"] = {":Lazy install<cr>", "Install"},
    ["u"] = {":Lazy update<cr>", "Update"},
    ["c"] = {":Lazy clean<cr>", "Clean"},
    ["h"] = {":Lazy home<cr>", "Home"},
    ["p"] = {":Lazy profile<cr>", "Profile"},
  },
}, { prefix = "<leader>" })
