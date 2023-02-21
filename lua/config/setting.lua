local g = vim.g
-- local go = vim.go
local o = vim.o
local opt = vim.opt
local cmd = vim.cmd

g.noswapfile = true
-- default shell
g.shell = "/bin/bash"
-- tell cmake to create a compile commands file
g.cmake_link_compile_commands = 1
-- save the last session into last_session file
g.session_last_session = "last_session"
-- cpp run command to
-- tells the shell to use 16 24bit colors
o.termguicolors = true
-- disable netrw at the very start of your init.lua (strongly advised) f
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
-- indent blank lines plugin config
-- g.indent_blankline_show_first_indent_level = false
-- g.indent_blankline_use_treesitter = true

local options = {
    -- cmp
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    pumheight = 12,

    showmatch = true,
    hlsearch = true,
    incsearch = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    ---------------- Indentation ----------------------
    autoindent = true,
    smartindent = true,
    expandtab = true,
    smarttab = true,
    ------Display tabs and trailing spaces visually----
    list = true,
    listchars = 'trail:·,nbsp:◇,tab:→ ,extends:▸,precedes:◂,eol:󰅀,',
    linebreak = true,
    --------------------- Folds -----------------------
    foldmethod = 'indent', -- fold based on indent
    foldnestmax = 3,
    foldcolumn = '1',
    ------------------Completion-----------------------
    wildmenu = true,
    wildmode = { "longest", "list", "full" },
    wildignore = {
        "*.o,*.obj,*~",
        "*vim/backups*",
        "*sass-cache",
        "*DS_Store*",
        "vendor/rails/**",
        "vendor/cache/**",
        "*.gem",
        "log/**",
        "tmp/**",
        "*.png,*.jpg,*.gif",
        "*/tmp/*,*.so,*.swp,*.zip",
    },
    ------------------Scrolling-----------------------
    scrolloff = 8,
    sidescrolloff = 15,
    sidescroll = 1,
    ------------------Search-------------------------
    ignorecase = true,
    smartcase = true,
    hidden = true,
    shortmess = "c",
    updatetime = 500,
    timeoutlen = 350,
    showcmd = true,
    backspace = { 'indent', 'eol', 'start' },
    number = true,
    history = 1000,
    showmode = true,
    -- guicursord = ""
    autoread = true,
    visualbell = true,
    background = 'dark',
    fillchars = { vert = "│" },
    numberwidth = 4,
    syntax = "enable",
    mouse = "a",
    clipboard = "unnamedplus",
    cursorline = true,
    ttyfast = true,
    wrap = false,
    splitright = true,
    splitbelow = true,
    undofile = true,
    cmdheight = 1,
    relativenumber = true,
    -- noshowmode = true,
    -- lua_syntax_someoption = 1,
    -- nowritebackup = true,
}

for k, v in pairs(options) do
  opt[k] = v
end

cmd [[
set nofoldenable
set nowritebackup
set nobackup
set noswapfile
set nowrap
set noinfercase
set noshowmode
let g:python_host_prog = "/usr/bin/python"
let g:python3_host_prog = "/usr/bin/python"
let g:lua_syntax_someoption = 0

let g:lua_syntax_someoption = 1
let g:highlightedyank_highlight_duration = 200

let g:ackprg = 'ag --nogroup --nocolor --column'
" indent Line

let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
" Default value is clap
let g:dashboard_default_executive ='telescope'
" autocmd FileType dashboard set showtabline=0 | autocmd WinLeave <buffer> set showtabline=2

highlight dashboardFooter    ctermfg=240
highlight dashboardHeader    ctermfg=114
highlight dashboardCenter    ctermfg=215
highlight dashboardShortCut  ctermfg=245

set sessionoptions-=options
]]

-- UltiSnipsExpandTrigger
-- UltiSnipsJumpForwardTrigger ='<c-b>',
-- UltiSnipsJumpBackwardTrigger ="<c-z>",
--
-- :set rubycomplete_buffer_loading
-- :set rubycomplete_classes_in_global

-- let g:indentLine_char = '│'
-- let g:indentLine_fileTypeExclude = ['dashboard']
---------------- Turn Off Swap Files --------------
