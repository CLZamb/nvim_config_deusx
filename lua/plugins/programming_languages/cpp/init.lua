return {
  lazy = true,
  enabled = false,
  dir = "~/Code/lua/neotest-gtest/",
  dependencies =  'nvim-neotest/neotest',
  config = function(_, _)
    require('neotest-gtest')({
      -- test_path_pattern = {".*_test%.cpp", ".*_test%.cc"}, -- The path pattern to detect test files
      -- args = {"--no-color"},
      runner = vim.fn.getcwd() .. '/build/bin/Chess_tests',
      -- runner =  function()
      --   return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/build/bin/', 'file')
      -- end,
      -- reuse_
    })
  end,
}
