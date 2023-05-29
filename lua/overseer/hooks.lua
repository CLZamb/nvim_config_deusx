local M = {}

local overseer = require("overseer")

local function add_components_to_template(name, list_opts)
  overseer.add_template_hook({ name = name }, function(task_defn, util)
    for _, opts in pairs(list_opts) do
      util.add_component(task_defn, opts)
    end
  end)
end

M.add_custom_hooks_to_templates = function()
  add_components_to_template(
  'Build',
  {
    { 'on_result_notify', on_change = false },
    { 'custom.open_trouble_on_failed' },
    { 'custom.close_trouble' },
  })

  add_components_to_template(
  'Run',
  {
    { 'custom.open_terminal' }
  })

  add_components_to_template(
  'GTest',
  {
    { 'on_complete_notify', on_change = false , statuses = {"FAILURE"}},
    { 'custom.open_trouble_on_failed' },
    { 'custom.close_trouble' },
    { 'custom.run_neotest'},
  })
end

return M
