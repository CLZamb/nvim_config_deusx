local M = {}

M.log_level = 'info'

M.pre_save_cmds = { 'NvimTreeClose', 'cclose', 'lua require("notify").dismiss()'}
M.post_restore_cmds = {"lua require('custom_commands.utils.utils_auto_session').loaded_session()"}
M.pre_restore_cmds = {"tabdo NvimTreeClose", 'lua require("notify").dismiss()'}

M.auto_session_create_enable = false
M.auto_session_enable_last_session = false
M.auto_session_enabled = false
M.auto_restore_enabled = false
M.auto_save_enabled = false

M.auto_session_suppress_dirs = {
  '~/',
  '~/Code',
  '/',
  '~',
  '~/Desktop',
  '~/Documents',
  '~/Downloads',
  '~/Pictures',
}

M.auto_session_suppress_buftypes = {
  'nofile',
  'prompt',
  'terminal',
}

M.auto_session_suppress_filetypes = {
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
}

return M
