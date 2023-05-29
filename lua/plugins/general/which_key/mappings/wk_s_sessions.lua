local wk = require("which-key")

wk.register({
  ["s"] = {
    name = '+Sessions ',
    ["d"] = {":Dashboard<CR>", "which_key_ignore"},
    ["S"] = {":lua require('auto-session').SaveSession(require('auto-session').get_root_dir() .. vim.fn.input('SessionName: '))<CR>", "saves current session"},
    ["o"] = {":RestoreSession<cr>", "open a session"},
    ["D"] = {":DeleteSession<cr>", "delete any session"},
    ["n"] = {":enew<CR>", "Restore session"},
    ["r"] = {":lua require('auto-session').RestoreSession(vim.fn.expand('$HOME') .. '/.local/share/nvim/sessions/last_session')<CR>", "Restore session"},
    ["f"] = {":Telescope find_files<CR>", "find files"},
    ["O"] = {":Telescope oldfiles<CR>", "Find old files"},
    ["q"] = {":qa<CR>", "Quit"},
  },
}, { prefix = "<leader>" })
