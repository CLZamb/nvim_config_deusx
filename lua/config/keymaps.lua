local options = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map('n', 'vv', ':vertical split<CR>', options)
map('n', 'ss', ':split<CR>', options)

local options_t = { noremap = true, silent = true }
map('t', '<C-h>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-j>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-h>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<C-h>', [[<c-\><c-n><c-w>h]], options_t)
map('t', '<Esc><Esc>', [[<C-\><C-n>:FloatermToggle<CR>]], options_t)
