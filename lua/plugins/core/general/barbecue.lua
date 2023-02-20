return {
  "utilyre/barbecue.nvim",
  name = "barbecue",
  version = "*",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons",
  },

  config = function(_, _)
    vim.opt.updatetime = 200

    require("barbecue").setup({
      -- create_autocmd = false, -- prevent barbecue from updating itself automatically
    })
    -- vim.api.nvim_create_autocmd({
    --   "WinScrolled",
    --   "BufWinEnter",
    --   "CursorHold",
    --   "InsertLeave",
    -- }, {
    --   group = vim.api.nvim_create_augroup("barbecue#create_autocmd", {}),
    --   callback = function()
    --     require("barbecue.ui").update()
    --   end,
    -- })
  end,
  -- enabled = true,
}
