local overseer = require('overseer')

return {
  desc = "Open the terminal",
  constructor = function(_)
    return {
      on_start = function(_, task)
        overseer.run_action(task,"open float");
      end,
    }
  end,
}
