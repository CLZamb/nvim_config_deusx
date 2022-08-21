local M = {}
local async = require("plenary.async")
local notify = require("notify").async

M.cmake_build_succeded = function() 
  async.run(function()
    notify("Build Succeeded", "info", {
      title = "Cmake",
    }).close()
  end)
  vim.cmd [[CMakeClose]]
end

M.cmake_build_failed = function() 
  async.run(function()
    notify("Build Failed", "error", {
      title = "Cmake",
    }).close()

  end)
  vim.cmd [[:cfirst]]
end

local function get_file_name(url)
  return url:match("^.+/(.+)$")
end

M.loaded_session = function() 
  local session_name = get_file_name(vim.v.this_session)
  if session_name ~= ' ' then
    async.run(function()
      notify("Session \"".. session_name .. "\" has been loaded", "info", {
        title = "Session",
      }).close()
    end)
  end
end

M.save_session_before_leave = function(session_name)
  if session_name == '~/.local/share/nvim/sessions/last_session' then
    require('auto-session').SaveSession('~/.local/share/nvim/sessions/last_session')
  elseif session_name ~= '' then
    require('auto-session').SaveSession(session_name)
    require('auto-session').SaveSession('~/.local/share/nvim/sessions/last_session')
  else
    print("not session found")
  end
end


return M
