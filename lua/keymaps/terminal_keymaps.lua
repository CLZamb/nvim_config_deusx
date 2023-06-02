local keymap = vim.api.nvim_set_keymap
local options_t = { noremap = true, silent = true }

-- exit terminal mode
keymap('t', '<Esc>', [[<C-\><C-n>]], options_t)
-- exit terminal mode go to window
keymap('t', '<C-w>', [[<C-\><C-n><C-w>]], options_t)
-- exit terminalk go to window dir
keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], options_t)
keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], options_t)
keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], options_t)
keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], options_t)

