local api = vim.api
local create_cmd = api.nvim_create_user_command
local overseer = require('overseer')

create_cmd("CMakeBuildAndRun", function()
  local tasks = overseer.list_tasks({ recent_first = true })
  if vim.tbl_isempty(tasks) then
    overseer.run_template({ name = "CMake: build and run"})
  else
    local task = overseer.task_list.get_by_name("CMake: build and run")
    overseer.run_action(task, "restart")
  end
end, {})
