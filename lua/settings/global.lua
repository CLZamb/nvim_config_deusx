local g = vim.g

-- default shell
g.shell = "/bin/bash"
-- tell cmake to create a compile commands file
g.cmake_link_compile_commands = 1
-- save the last session into last_session file
g.session_last_session = "last_session"
-- disable netrw at the very start of your init.lua (strongly advised) f
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.loaded_perl_provider = 0
g.python_host_prog = "/usr/bin/python"
g.python3_host_prog = "/usr/bin/python"
g.mapleader = ' '
g.indent_blankline_filetype_exclude = {
  "help",
  "dashboard",
  "neogitstatus",
  "neo-tree",
  "Trouble",
}
