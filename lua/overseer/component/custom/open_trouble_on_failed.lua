local overseer = require('overseer')
local constants = overseer.constants
local STATUS = constants.STATUS

return {
  desc = "Open the plugin trouble.nvim on failed status",

  constructor = function(_)
    -- You may optionally define any of the methods below
    return {
      on_complete = function(_, _, status, _)
        if status == STATUS.FAILURE then
          vim.cmd('Trouble quickfix')
        end
      end,
    }
  end,
}
