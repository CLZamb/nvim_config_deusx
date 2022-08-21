vim.g.cmake_jump_on_error = 0

vim.cmd[[
augroup vim-cmake-group
autocmd! User CMakeBuildFailed 
\ lua require('notify_config.functions').cmake_build_failed()
augroup END
]] 

vim.cmd[[
augroup vim-cmake-group
autocmd! User CMakeBuildSucceeded 
\ lua require('notify_config.functions').cmake_build_succeded()
augroup END
]] 

vim.cmd [[
augroup vim-auto-save-session
autocmd!
autocmd VimLeave * lua require('notify_config.functions').save_session_before_leave(vim.v.this_session)
augroup END
]]
