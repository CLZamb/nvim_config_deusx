-- vim.o                                                                  *vim.o*
--     Get or set |options|. Like `:set`. Invalid key is an error.
--
--     Note: this works on both buffer-scoped and window-scoped options using the
--     current buffer and window.
--
--     Example: >lua
--         vim.o.cmdheight = 4
--         print(vim.o.columns)
--         print(vim.o.foo)     -- error: invalid key
local o = vim.o

-- globla status bar is 3
o.laststatus  = 3
-- tells the shell to use 16 24 bit colors
o.termguicolors = true

o.sessionoptions="curdir,resize,buffers,tabpages,winsize,winpos,terminal"
--
-- vim.opt
--
-- A special interface |vim.opt| exists for conveniently interacting with list-
-- and map-style option from Lua: It allows accessing them as Lua tables and
-- offers object-oriented method for adding and removing entries.
--
--     Examples:  
--
--     The following methods of setting a list-style option are equivalent:
--         In Vimscript: >vim
--             set wildignore=*.o,*.a,__pycache__
-- <
--         In Lua using `vim.o`: >lua
--             vim.o.wildignore = '*.o,*.a,__pycache__'
-- <
--         In Lua using `vim.opt`: >lua
--             vim.opt.wildignore = { '*.o', '*.a', '__pycache__' }
-- <
--     To replicate the behavior of |:set+=|, use: >lua
--
--
local opt = vim.opt

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
  guicursor = "",
  foldenable= false,
  writebackup = false,
  backup = false,
  swapfile = false,
  infercase = false,
  showmode = false
}

for k, v in pairs(options) do
  opt[k] = v
end
