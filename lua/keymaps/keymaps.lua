local map = vim.api.nvim_set_keymap

-- exit terminal and go to window
local options_t = { noremap = true, silent = true }
map('t', '<C-h>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-j>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-k>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-l>', [[<c-\><c-n><c-w>h]], options_t)

local options = { noremap = true, silent = true }

-- vertical split
map("n", "vv", ":vertical split<CR>", options)
-- horizontal split
map("n", "ss", ":split<CR>", options)

-- toggle floaterm
map('t', '<Esc><Esc>', [[<C-\><C-n>:FloatermToggle<CR>]], options)
