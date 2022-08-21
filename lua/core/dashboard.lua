vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_header = {
   "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
   "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
   "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
   "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
   "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
   "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
   "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
   " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
   " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
   "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
   "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
   "                                   ",
}

vim.g.dashboard_custom_section = {
  ['01'] = { 
    description = {'  New file                                SPC s n  '},
    command = 'enew',
  },
  ['02'] = {
    description = {'  Restore session                         SPC s r  '},
    command = function() 
      require('auto-session').RestoreSession(vim.fn.expand('$HOME') .. '/.local/share/nvim/sessions/last_session') 
    end,
  },
  ['03'] = {
    description = {'  Search session...                       SPC s s  '},
    command = "lua require('session-lens').search_session()",
  },
  ['04'] = {
    description = {'  Find files                              SPC s f  '},
    command = 'Telescope find_files',
  },
  ['05'] = {
    description = {'  Find recent                             SPC s o  '},
    command = 'Telescope oldfiles',
  },
  ['09'] = {
    description = {'  Quit Neovim                             SPC s q  '},
    command = 'qa',
  },
}
--
vim.g.dashboard_enable_session = false  -- we have a plugin for session management
-- vim.g.dashboard_footer_icon = '🐝 '
--
vim.cmd("let packages = len(globpath('~/.local/share/nvim/site/pack/packer/start', '*', 0, 1))")
vim.api.nvim_exec([[let g:dashboard_custom_footer = ['Loaded '..packages..' packages']
]], false)
