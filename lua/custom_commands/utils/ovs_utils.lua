local overseer = require('overseer')
local api = vim.api

local M = {}

function M.run_task_cmd(task_cmd)
  local task = overseer.task_list.get_by_name(task_cmd)
  if task == nil then
    overseer.run_template({ name = task_cmd})
  else
    overseer.run_action(task, "restart")
  end
end

function M.cur_buf_filetype_run_task(task_type)
  local filetype = api.nvim_buf_get_option(0, 'filetype')

  for filetype_index, task_cmd in pairs(task_type) do
    if (filetype == filetype_index) then
      M.run_task_cmd(task_cmd)
      break
    end
  end
end

return M
