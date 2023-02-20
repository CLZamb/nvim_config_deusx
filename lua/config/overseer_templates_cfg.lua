local M = {}

local overseer = require("overseer")

M.add_custom_hooks_to_templates = function()
  overseer.add_template_hook({ name = 'Run'}, function(task_defn, util)
    util.add_component(task_defn, { 'custom.open_terminal' })
  end)

  overseer.add_template_hook({ name = 'CMake: build and run'}, function(task_defn, util)
    -- util.add_component(task_defn, { 'custom.run_command_on_sucess' })
    util.add_component(task_defn, { 'custom.open_trouble_on_failed' })
    util.add_component(task_defn, { 'custom.close_trouble' })
    util.add_component(task_defn, { 'run_after', task_names = {'Run'}, detach = false})
  end)
end


    -- overseer.add_template_hook({ name = 'Run'}, function(task_defn, util)
    --   util.add_component(task_defn, { 'custom.open_terminal' })
    -- end)
    --
    -- overseer.add_template_hook({ name = 'CMake: build and Run'}, function(task_defn, util)
    --   -- util.add_component(task_defn, { 'custom.run_command_on_sucess' })
    --   util.add_component(task_defn, { 'custom.open_trouble_on_failed' })
    --   util.add_component(task_defn, { 'custom.close_trouble' })
    --   util.add_component(task_defn, { 'run_after', task_names = {'Run'}})
    -- end)
return M
