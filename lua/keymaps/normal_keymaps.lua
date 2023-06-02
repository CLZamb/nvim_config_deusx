local keymap = vim.api.nvim_set_keymap
local options = { noremap = true, silent = true }
-- vertical split
keymap("n", "vv", ":vertical split<CR>", options)
-- horizontal split
keymap("n", "ss", ":split<CR>", options)

-- REPLACED BY vim-kitty-nvvigator script
-- remove these lines if not using kitty terminal
-- keymap('n', '<C-h>', [[<Cmd>wincmd h<CR>]], options)
-- keymap('n', '<C-j>', [[<Cmd>wincmd j<CR>]], options)
-- keymap('n', '<C-k>', [[<Cmd>wincmd k<CR>]], options)
-- keymap('n', '<C-l>', [[<Cmd>wincmd l<CR>]], options)
