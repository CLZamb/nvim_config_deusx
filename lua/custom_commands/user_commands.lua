local create_cmd = vim.api.nvim_create_user_command
local ovs_util = require('custom_commands.utils.ovs_utils')

local build_task_command = {
  cpp = "CMake: build",
  -- python = "python"
}

local run_task_commands = {
  cpp = "Run",
}

local build_and_run_task_commands = {
  cpp = "CMake: build and run",
}

local debug_task_commands = {
  cpp = "GTest: build and run",
}

create_cmd("OVSBuildAndRun", function()
  ovs_util.cur_buf_filetype_run_task(build_and_run_task_commands)
end, {})

create_cmd("OVSBuild", function()
  ovs_util.cur_buf_filetype_run_task(build_task_command)
end, {})

create_cmd("OVSRun", function()
  ovs_util.cur_buf_filetype_run_task(run_task_commands)
end, {})
--
create_cmd("OVSTestBuildAndRun", function()
  ovs_util.cur_buf_filetype_run_task(debug_task_commands)
end, {})
