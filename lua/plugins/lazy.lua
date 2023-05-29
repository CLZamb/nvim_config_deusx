local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  checker = {
    enabled = true,
    notify = false, -- get a notification when new updates are found
    frequency = 36000, -- check for updates every hour
  },

  spec = {
   {import = 'themes'},

   {import = 'plugins.ui'},
   {import = 'plugins.ui.lualine.setup'},
   {import = 'plugins.ui.bufferline.setup'},
   {import = 'plugins.ui.indent_blankline.setup'},
   {import = 'plugins.ui.noice.setup'},
   {import = 'plugins.ui.notify.setup'},
   {import = 'plugins.ui.window.setup'},


   {import = 'overseer.setup'},

   {import = 'plugins.general'},
   {import = 'plugins.general.cmp.setup'},
   {import = 'plugins.general.comment.setup'},
   {import = 'plugins.general.dashboard.setup'},
   {import = 'plugins.general.gitsigns.setup'},
   {import = 'plugins.general.neorg.setup'},
   {import = 'plugins.general.neotree.setup'},
   {import = 'plugins.general.session.setup'},
   {import = 'plugins.general.surround.setup'},
   {import = 'plugins.general.telescope.setup'},
   {import = 'plugins.general.treesitter.setup'},
   {import = 'plugins.general.trouble.setup'},
   {import = 'plugins.general.which_key.setup'},
   {import = 'plugins.general.window_picker.setup'},

   {import = 'plugins.programming_languages'},
   {import = 'plugins.programming_languages.cpp'},
   {import = 'plugins.programming_languages.java'},

   {import = 'plugins.lsp'},
  },
  change_detection = { notify = false },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

