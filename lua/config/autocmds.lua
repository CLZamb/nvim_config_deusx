local api = vim.api
local create_augroup = api.nvim_create_augroup
local create_autocmd = api.nvim_create_autocmd

-- run code depending on the filetyp
local run_it = create_augroup("runIt", { clear = true })

create_autocmd("FileType", {
  pattern = "cpp",
  command = 
    [[ nnoremap <silent> <buffer> <leader>r 
       :w <bar> :AsyncTask project-build-and-run<cr>]],
  group = run_it,
})

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

-- run code depending on the filetyp
local build_it = create_augroup("buildIt", { clear = true })

create_autocmd("FileType", {
  pattern = "cpp",
  command = 
    [[ nnoremap <silent> <buffer> <leader>b :w <bar> :AsyncTask project-build<cr>]],
  group = build_it,
})

local test_it = create_augroup("testIt", { clear = true })

create_autocmd("FileType", {
  pattern = "cpp",
  command = 
    [[ nnoremap <silent> <buffer> <leader>g :w <bar> :AsyncTask project-tests<cr>]],
  group = test_It,
})

-- api.nvim_create_autocmd("FileType", { 
--   pattern = "man", 
--   command = [[nnoremap <buffer><silent> q :quit<CR>]] 
-- })
