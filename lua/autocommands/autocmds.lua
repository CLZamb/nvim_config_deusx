vim.g.cmake_jump_on_error = 0

local api = vim.api
local create_augroup = api.nvim_create_augroup
local create_autocmd = api.nvim_create_autocmd

local auto_save_session_group = create_augroup("save-session", { clear = true })

local function get_file_name(url)
  return url:match("^.+/(.+)$")
end

create_autocmd("VimLeave", {
  callback = function()
    local session_name = get_file_name(vim.v.this_session)
    if session_name ~= '' then
      vim.cmd('mksession! ' .. session_name)
    end
  end,
  group = auto_save_session_group,
})
