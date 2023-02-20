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

-- go to window left
map('n', '<C-h>', '<cmd>wincmd h<CR>', options)
map('i', '<C-h>', '<cmd>wincmd h<CR>', options)
map('t', '<C-h>', '<cmd>wincmd h<CR>', options)

-- go to window down
map('n', '<C-j>', '<cmd>wincmd j<CR>', options)
map('i', '<C-j>', '<cmd>wincmd j<CR>', options)
map('t', '<C-j>', '<cmd>wincmd j<CR>', options)

-- go to window down
map('n', '<C-k>', '<cmd>wincmd k<CR>', options)
map('i', '<C-k>', '<cmd>wincmd k<CR>', options)
map('t', '<C-k>', '<cmd>wincmd k<CR>', options)

-- go to window down
map('n', '<C-l>', '<cmd>wincmd l<CR>', options)
map('i', '<C-l>', '<cmd>wincmd l<CR>', options)
map('t', '<C-l>', '<cmd>wincmd l<CR>', options)
