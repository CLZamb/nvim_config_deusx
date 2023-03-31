local overseer = require('overseer')
local constants = overseer.constants
local STATUS = constants.STATUS

return {
  desc = "run neotest after some failed or success status",
  -- The params passed in will match the params defined above
  constructor = function(_)
    -- You may optionally define any of the methods below
    return {
      on_complete = function(_, _, status, _)
        if status == STATUS.FAILURE or STATUS.SUCCESS then
          vim.cmd [[:lua require("neotest").run.run() ]]
        end
      end,
    }
  end,
}
