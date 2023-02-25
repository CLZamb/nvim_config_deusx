local M = {}

local overseer = require("overseer")

local function add_components_to_template(_name, list_opts)
  overseer.add_template_hook({ name = _name}, function(task_defn, util)
    for _, opts in pairs(list_opts) do
      util.add_component(task_defn, opts)
    end
  end)
end

M.add_custom_hooks_to_templates = function()
  add_components_to_template(
  'CMake: build',
  {
    { 'on_result_notify', on_change = false },
    { 'custom.open_trouble_on_failed' },
    { 'custom.close_trouble' },
  })

  add_components_to_template(
  'Run',
  {{ 'custom.open_terminal' }}
  )

  add_components_to_template(
  'CMake: build and run',
  {
    { 'on_result_notify', on_change = false },
    { 'custom.open_trouble_on_failed' },
    { 'custom.close_trouble' },
    { 'run_after', task_names = {'Run'}, detach = false},
  })

  add_components_to_template(
  'GTest: build and run',
  {
    { 'on_complete_notify', on_change = false , statuses = {"FAILURE"}},
    { 'custom.open_trouble_on_failed' },
    { 'custom.close_trouble' },
    { 'run_after', task_names = {'GTestBun'}, detach = false},
  })

  add_components_to_template(
  'GTestBun',
  {
    { 'on_complete_notify', on_change = false },
    { 'custom.open_terminal_on_failed'},
  })
end

return M
