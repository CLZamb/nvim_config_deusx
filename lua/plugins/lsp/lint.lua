return {
  "mfussenegger/nvim-lint",

  event = "VeryLazy",

  config = function()
    local nvim_lint = require('lint')

    nvim_lint.linters_by_ft = {
      c = { "cppcheck", "codespell" },
      cpp = {"cppcheck"},
      sh = { "shellcheck", "codespell" },
      lua = { "codespell", "luacheck" },
      -- javascript = { "eslint" },
      -- typescript = { "eslint" },
      -- python = { "codespell", "pylint", "mypy" },
      -- dockerfile = { "hadolint", "codespell" },
      bash = { "shellcheck", "codespell" },
      tex = { "vale", "chktex" },
      -- text = {'languagetool'},
      markdown = { "markdownlint" },
      -- vimwiki = { "markdownlint" },
    }

    vim.api.nvim_exec([[au BufWritePost <buffer> lua require('lint').try_lint()]], false)
    vim.cmd([[au BufWritePost <buffer> lua require('lint').try_lint() ]])
    vim.cmd([[au BufEnter <buffer> lua require('lint').try_lint() ]])
  end
}
