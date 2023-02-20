return {
  desc = "Open the plugin trouble.nvim on failed status",
  -- The params passed in will match the params defined above
  constructor = function(_)
    -- You may optionally define any of the methods below
    return {
      on_start = function(_, _)
        vim.cmd('TroubleClose')
      end,
    }
  end,
}
