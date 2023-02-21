local overseer = require('overseer')
local constants = overseer.constants
local STATUS = constants.STATUS

return {
  desc = "Open the terminal on failed status",
  editable = true,
  -- When false, don't serialize this component when saving a task to disk
  serializable = true,
  -- The params passed in will match the params defined above
  constructor = function(_)
    local function open_toggle_term(task)
      overseer.run_action(task,"open float");
    end
    -- You may optionally define any of the methods below
    return {
      on_complete = function(_, task, status, _)
        if status == STATUS.FAILURE then
          open_toggle_term(task)
        end
      end,
    }
  end,
}
