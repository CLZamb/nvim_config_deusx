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
    -- You may optionally define any of the methods below
    return {
      on_complete = function(_, task, status, _)
        if status == STATUS.FAILURE then
          overseer.run_action(task,"open float");
        end
      end,
    }
  end,
}
