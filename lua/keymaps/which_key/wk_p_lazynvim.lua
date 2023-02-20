local wk = require("which-key")

wk.register({
  ["p"] = {
    name = '+LazyNvim ',
    ["i"] = {":Lazy install<cr>", "Install"},
    ["u"] = {":Lazy update<cr>", "Update"},
    ["c"] = {":Lazy clean<cr>", "Clean"},
    ["s"] = {":Lazy home<cr>", "Home"},
  },
}, { prefix = "<leader>" })
