vim.g.cmake_jump_on_error = 0

local api = vim.api
local create_augroup = api.nvim_create_augroup
local create_autocmd = api.nvim_create_autocmd

-- run code depending on the filetyp
local run_it = create_augroup("runIt", { clear = true })

create_autocmd("FileType", {
  pattern = "c",
  command =
    [[ nnoremap <silent> <buffer> <leader>r 
       :w <bar> !clang -std=c99 -lm % -o %:p:h/%:t:r.out && ./%:r.out<CR>]],
  group = run_it,
})

create_autocmd("FileType", {
  pattern = "java",
  command =
    [[ nnoremap <silent> <buffer> <leader>r :w <bar> Java %<CR>]],
  group = run_it,
})

create_autocmd("FileType", {
  pattern = "python",
  command =
    [[ nnoremap <silent> <buffer> <leader>r :w <bar> !python % <CR>]],
  group = run_it,
})

create_autocmd("FileType", {
  pattern = "perl",
  command =
    [[ nnoremap <silent> <buffer> <leader>r :w <bar> !perl % <CR>]],
  group = run_it,
})

create_autocmd("FileType", {
  pattern = "go",
  command =
    [[ nnoremap <silent> <buffer> <leader>r :w <bar> !go build % && ./%:p <CR>]],
  group = run_it,
})

create_autocmd("FileType", {
  pattern = "ruby",
  command =
    [[ nnoremap <silent> <buffer> <leader>r :w <bar> rubyfile %<CR>]],
  group = run_it,
})

local auto_save_session_group = create_augroup("vim-auto-save-session", { clear = true })

create_autocmd("VimLeave", {
  callback = function()
    require('custom_commands.utils.utils_auto_session').save_session_before_leave(vim.v.this_session)
  end,
  group = auto_save_session_group,
})
