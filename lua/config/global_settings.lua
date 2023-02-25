local g = vim.g
local o = vim.o
local opt = vim.opt
local cmd = vim.cmd
-- local go = vim.go

g.noswapfile = true
-- default shell
g.shell = "/bin/bash"
-- tell cmake to create a compile commands file
g.cmake_link_compile_commands = 1
-- save the last session into last_session file
g.session_last_session = "last_session"
-- tells the shell to use 16 24 bit colors
o.termguicolors = true
o.sessionoptions="curdir,resize,buffers,tabpages,winsize,winpos,terminal"
-- disable netrw at the very start of your init.lua (strongly advised) f
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
o.laststatus  = 3

local options = {
    -- cmp
    completeopt = { "menuone", "noselect" }, -- mostly just for cmp
    pumheight = 12,
    --
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
let g:highlightedyank_highlight_duration = 200

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

" set sessionoptions-=options
]]

-- let g:ackprg = 'ag --nogroup --nocolor --column'
-- let g:edge_colors_override = {'bg_dim': ['#282c34', '250']}
-- let g:edge_colors_override = {'bg0': ['#282c34', '250']}
-- let g:edge_colors_override = {'bg_dim': ['#272932', '250']}

-- let g:terminal_color_4 = '#ff0000'
-- let g:terminal_color_5 = 'green'
---------------- Turn Off Swap Files --------------
