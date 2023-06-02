local wk = require("which-key")

wk.register({
  ["h"] = {
    name = '+Harpoon',
    ["a"] = {':lua require("harpoon.mark").add_file()<CR>', 'add a file'},
    ["t"] = {':lua require("harpoon.ui").toggle_quick_menu()<CR>', 'quick menu'},
    ["3"] = {':lua require("harpoon.ui").nav_file(3)<CR>', 'go to file 3'},
    ["j"] = {':lua require("harpoon.ui").nav_next()<CR>', 'go to next'},
    ["k"] = {':lua require("harpoon.ui").nav_prev()<CR>', 'go to prev'},
  },
}, { prefix = "<leader>" })
