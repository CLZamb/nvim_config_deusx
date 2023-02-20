return {
  'rmagatti/auto-session',

  lazy = true,

  config = function(_, _)
    vim.o.sessionoptions="curdir,resize,buffers,tabpages,winsize,winpos,terminal"
    require('auto-session').setup {
      log_level = 'info',

      pre_save_cmds = { 'NvimTreeClose', 'cclose', 'lua vim.notify.dismiss()'},
      post_restore_cmds = {"lua require('notify_config.functions').loaded_session()"},
      pre_restore_cmds = {"tabdo NvimTreeClose", 'lua vim.notify.dismiss()'},

      auto_session_create_enable = false,
      auto_session_enable_last_session = false,
      auto_session_enabled = false,
      auto_restore_enabled = false,
      auto_save_enabled = false,
      --
      auto_session_suppress_dirs = {
        '~/',
        '~/code',
        '/',
        '~',
        '~/Desktop',
        '~/Documents',
        '~/Downloads',
        '~/Pictures',
      },

      auto_session_suppress_buftypes = {
        'nofile',
        'prompt',
        'terminal',
      },

      auto_session_suppress_filetypes = {
        'NvimTree',
        'dashboard',
        'gitcommit',
        'help',
        'lsp-installer',
        'lua',
        'packer',
        'packer',
        'startify',
        'terminal',
        'text',
      },
      -- auto_session_root_dir = vim.fn.getenv("HOME") .. "/.vim/sessions/",
    }
  end
}
