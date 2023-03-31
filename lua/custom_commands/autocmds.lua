vim.g.cmake_jump_on_error = 0

local api = vim.api
local create_augroup = api.nvim_create_augroup
local create_autocmd = api.nvim_create_autocmd

local auto_save_session_group = create_augroup("vim-auto-save-session", { clear = true })
create_autocmd("VimLeave", {
  callback = function()
    require('custom_commands.utils.utils_auto_session').save_session_before_leave(vim.v.this_session)
  end,
  group = auto_save_session_group,
})
