local map = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }
-- vertical split
map("n", "vv", ":vertical split<CR>", options)
-- horizontal split
map("n", "ss", ":split<CR>", options)
