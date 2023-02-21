local api = vim.api
local create_cmd = api.nvim_create_user_command
local overseer = require('overseer')

create_cmd("CMakeBuildAndRun", function()
  local task = overseer.task_list.get_by_name("CMake: build and run")
  if task == nil then
    overseer.run_template({ name = "CMake: build and run"})
  else
    overseer.run_action(task, "restart")
  end
end, {})

create_cmd("CMakeBuild", function()
  local task = overseer.task_list.get_by_name("CMake: build")
  if task == nil then
    overseer.run_template({ name = "CMake: build"})
  else
    overseer.run_action(task, "restart")
  end
end, {})

create_cmd("CMakeRun", function()
  local task = overseer.task_list.get_by_name("Run")
  if task == nil then
    overseer.run_template({ name = "Run"})
  else
    overseer.run_action(task, "restart")
  end
end, {})

create_cmd("CMakeRun", function()
  local task = overseer.task_list.get_by_name("Run")
  if task == nil then
    overseer.run_template({ name = "Run"})
  else
    overseer.run_action(task, "restart")
  end
end, {})

create_cmd("GTest", function()
  local task = overseer.task_list.get_by_name("GTest: build and run")
  if task == nil then
    overseer.run_template({ name = "GTest: build and run"})
  else
    overseer.run_action(task, "restart")
  end
end, {})
