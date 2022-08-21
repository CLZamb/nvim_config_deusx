vim.g.mapleader = ' '
local wk = require("which-key")

wk.setup {
  plugins = {
    marks = false, -- shows a list of your marks on ' and `
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = false, -- adds help for motions
      text_objects = false, -- help for text objects triggered after entering an operator
      windows = false, -- default bindings on <c-w>
      nav = false, -- misc bindings to work with windows
      z = false, -- bindings for folds, spelling and others prefixed with z
      g = false, -- bindings for prefixed with g
    },
  },
  window = {
    border = "single", -- none, single, double, shadow
    winblend = 0
  },
  layout = {
    align = "center", -- align columns left, center or right
  },
  key_labels = {
    ["<space>"] = "Spc",
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
}

wk.register({
  ["+"] = { ":exe \"vertical resize \" . (winheight(0) + 5)<cr>" , "which_key_ignore"},
  ["-"] = { ":exe \"vertical resize \" . (winheight(0) - 5)<cr>" , "which_key_ignore"},
  
  ["/"] = { ":noh<cr>" , "which_key_ignore"},
  ["1"] = { "<Cmd>BufferLineGoToBuffer 1<CR>", "which_key_ignore"},
  ["2"] = { "<Cmd>BufferLineGoToBuffer 2<CR>", "which_key_ignore"},
  ["3"] = { "<Cmd>BufferLineGoToBuffer 3<CR>", "which_key_ignore"},
  ["4"] = { "<Cmd>BufferLineGoToBuffer 4<CR>", "which_key_ignore"},
  ["5"] = { "<Cmd>BufferLineGoToBuffer 5<CR>", "which_key_ignore"},
  ["6"] = { "<Cmd>BufferLineGoToBuffer 6<CR>", "which_key_ignore"},
  ["7"] = { "<Cmd>BufferLineGoToBuffer 7<CR>", "which_key_ignore"},
  ["8"] = { "<Cmd>BufferLineGoToBuffer 8<CR>", "which_key_ignore"},
  ["9"] = { "<Cmd>BufferLineGoToBuffer 9<CR>", "which_key_ignore"},

  ["w"] = {
    ["1"] = { ":tabn 1<CR>", "which_key_ignore"},
    ["2"] = { ":tabn 2<CR>", "which_key_ignore"},
    ["3"] = { ":tabn 3<CR>", "which_key_ignore"},
    ["4"] = { ":tabn 4<CR>", "which_key_ignore"},
    ["5"] = { ":tabn 5<CR>", "which_key_ignore"},
    ["6"] = { ":tabn 6<CR>", "which_key_ignore"},
    ["7"] = { ":tabn 7<CR>", "which_key_ignore"},
    ["8"] = { ":tabn 8<CR>", "which_key_ignore"},
    ["9"] = { ":tabn 9<CR>", "which_key_ignore"},
  };

  ["0"] = { ":BufferLinePick<CR>", "which_key_ignore"},
  ["d"] = {'<cmd>TroubleToggle workspace_diagnostics<cr>' , 'Trouble toggle'},

-- Neovim native lsp implementation
  ["l"] = {
    name = "+Lsp",
    ["a"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>" , "Code action"},
    ["c"] = { "<cmd>lua vim.diagnostic.setloclist()<CR>" , "set loclist"},
    ["D"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>" , "Go to declaration"},
    ["d"] = { "<cmd>lua vim.lsp.buf.definition()<CR>" , "Go to definition"},
    ["f"] = { "<cmd>lua vim.lsp.buf.formatting()<CR>" , "Formatting"},

    ["g"] = { "<cmd>TroubleToggle lsp_references<cr>" , "References"},

    ["i"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>" , "Implementation"},
    ["l"] = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>" , "Inspect worspace folder"},
    ["n"] = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>" , "Go to next"},
    ["p"] = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>" , "Go to prev"},
    ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>" , "Hover"},
    ["s"] = { "<cmd>lua vim.diagnostic.open_float()<CR>" , "Show line diagnostics"},
    ["S"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>" , "Signature help"},
    ["t"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>" , "Type definition"},
    ["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>" , "Rename"},
    ["R"] = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>" , "Remove workspace folder"},
    ["w"] = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>" , "Add worspace forlder"},
  },

-- Close current buffer without closing the windows
  ["q"] = {":Bclose!<cr>", "which_key_ignore"},
}, {
  prefix = '<leader>',
  silent = true,
})

wk.register({

  ["c"]= {
    name = '+CMake',
    ["g"] = {':CMakeGenerate<cr>' , 'Generate'},
    ["b"] = {":CMakeBuild<cr>" , 'Build'},
    ["o"] = {":CMakeOpen<cr>", "Open"},
    ["c"] = {":CMakeClose<cr>", "Close"},
  },
  ["a"] = {
    name = '+Vimspector',
    ["c"] = {'<Plug>VimspectorContinue' , 'Continue'},
    ["s"] = {"<Plug>VimspectorStop" , 'Stop'},
    ["r"] = {"<Plug>VimpectorRestart", "Restart"},
    ["p"] = {"<Plug>VimspectorPause", "Pause"},
    ["b"] = {"<Plug>VimspectorToggleBreakpoint" , 'Toggle breakpoint'},
    ["n"] = {"<Plug>VimspectorToggleConditionalBreakpoint" , 'Set breakpoint condition'},
    ["f"] = {"<Plug>VimspectorAddFunctionBreakpoint", 'Set breakpoint message'},
    ["t"] = {"<Plug>VimspectorRunToCursor", 'Open repl'},
    ["o"] = {"<Plug>VimspectorStepOver", 'Step over'},
    ["i"] = {"<Plug>VimspectorStepInto", 'Step into'},
    ["t"] = {"<Plug>VimspectorStepOut", 'Step out'},
    ["u"] = {"<Plug>VimspectorUpFrame", 'Up frame'},
    ["d"] = {"<Plug>VimspectorDownFrame", 'down Frame'},
    ["B"] = {"<Plug>VimspectorBalloonEval", 'Baloon'},
    ["O"] = {":VimspectorShowOutput<CR>", 'Show output'},
    ["R"] = {":VimspectorReset<CR>", 'Reset'},
    ["e"] = {":VimspectorEval<CR>", 'Eval'},
    ["w"] = {":VimspectorWatch<CR>", 'Watch'},
  },

  ["t"] = {
    name = '+Telescope',
    ["a"] = {'<cmd>lua require("telescope").extensions.asynctasks.all()<cr>' , 'Asynctasks'},
    ["l"] = {'<cmd>Telescope live_grep<cr>' , 'Live grep'},
    ["b"] = {'<cmd>Telescope buffers<cr>' , 'Buffers'},
    ["c"] = {
      "<cmd>lua require'telescope.builtin'.find_files{ search_dirs={'%:p:h'} }<cr>", 
      'find file from current buffer'
    },
    ["d"] = {"<cmd>lua require'core.telescope'.search_dotfiles()<cr>", "search dot files"},
    ["e"] = {'<cmd>lua require "telescope".extensions.file_browser.file_browser()<CR>', 'file browser'},
    ["f"] = {
      "<cmd>lua require'telescope.builtin'.find_files{ cwd=require'telescope.utils'.buffer_dir() }<cr>", 
      'find file browser from current buffer'
    },
    ["v"] = {"<cmd>lua require'core.telescope'.search_vim_files()<cr>", "search vim files"},
    ["h"] = {'<cmd>Telescope help_tags<cr>' , 'Help Tags'},
    ["u"] = {'<cmd>Telescope ultisnips<cr>' , 'Ultisnips'},
    ["s"] = {'<cmd>Telescope lsp_workspace_symbols<cr>', 'Workspace Symbols'},
  },

  ["T"] = {
    name = '+Trouble',
    ["w"] = {'<cmd>TroubleToggle workspace_diagnostics<cr>', 'Diagnositc workspace'},
    ["d"] = {'<cmd>TroubleToggle document_diagnostics<cr>', 'diagnostic document'},
    ["q"] = {'<cmd>TroubleToggle quickfix<cr>', 'Quickfix'},
    ["l"] = {'<cmd>TroubleToggle loclist<cr>', 'Loclist'},
    ["r"] = {'<cmd>TroubleToggle lsp_references<cr>', 'References'},
  },

  -- Easymotion 
  ["<space>"] = {
    name = '+Hop ',
       s = {"<cmd>lua require'hop'.hint_char1()<cr>" , 'find {char} to the right'},
       f = {"<cmd>lua require'hop'.hint_char2()<cr>" , 'find two {char} to the right'},
       w = {"<cmd>lua require'hop'.hint_words()<cr>" , 'find words'},
       l = {"<cmd>lua require'hop'.hint_lines()<cr>" , 'hint lines'},
       p = {"<cmd>lua require'hop'.hint_patterns()<cr>" , 'hint patters'},
  },
  ["e"] = {
    name = '+Tabedit ',
    ["e"] = {':tabe <cr>'                                             , 'empty file'},
    ["i"] = {':tabedit ~/.config/nvim/init.lua<cr>'                   , 'Lua init'},
    ["v"] = {':tabedit ~/.vimrc<cr>'                                  , 'vimrc'},
    ["w"] = {':tabedit ~/.config/nvim/lua/core/whichkey.lua<cr>'      , 'which key'},
  },

-- Gitgutter mappings
  -- ["G"] = {
  --   name = '+Git-Gutter',
  --   ["p"] = {":GitGutterPreviewHunk<cr>" , 'Preview hunk'},
  --   ["s"] = {":GitGutterStageHunk<cr>"   , 'Staged hunk'},
  --   ["u"] = {":GitGutterUndoHunk<cr>"    , 'Undo hunk'},
  -- },

  ["p"] = {
    name = '+Packager ',
    ["i"] = {":PackerInstall<cr>", "Install"},
    ["u"] = {":PackerUpdate<cr>", "Update"},
    ["c"] = {":PackerClean<cr>", "Clean"},
    ["s"] = {":PackerStatus<cr>", "Status"},
  },
  ["s"] = {
    name = '+Sessions ',
      ["d"] = {":Dashboard<CR>", "which_key_ignore"},
      ["S"] = {":lua require('auto-session').SaveSession(require('auto-session').get_root_dir() .. vim.fn.input('SessionName: '))<CR>", "saves current session"},
      ["o"] = {":RestoreSession<cr>", "open a session"},
      ["D"] = {":DeleteSession<cr>", "delete any session"},
      ["n"] = {":enew<CR>", "Restore session"},
      ["r"] = {":lua require('auto-session').RestoreSession(vim.fn.expand('$HOME') .. '/.local/share/nvim/sessions/last_session')<CR>", "Restore session"},
      ["s"] = {":lua require('session-lens').search_session()<CR>", "Search session"},
      ["f"] = {":Telescope find_files<CR>", "find files"},
      ["o"] = {":Telescope oldfiles<CR>", "Find old files"},
      ["q"] = {":qa<CR>", "Quit"},
  },
  -- Packager mapping 
  ['w'] = {
    name = '+Windows ' ,
    ["d"] = {"<C-W>c" , "delete-window"},
    ["v"] = {"<C-W>v" , "layout-double-columns"},
    ["H"] = {"<C-W>5<" , "expand-window-left"},
    ["J"] = {"resize +5" , "expand-window-below"},
    ["L"] = {"<C-W>5>" , "expand-window-right"},
    ["K"] = {"resize -5" , "expand-window-up"},
    ["="] = {"<C-W>=" , "balance-window"},
    ["s"] = {"<C-W>s" , "split-window-below"},
    ["v"] = {"<C-W>v" , "split-window-below"},
    ["l"] = {"<C-W>v<C-W>r" , "split-window-left"},
    ["?"] = {"Windows" , "fzf-window"},
  },
  [';'] = {
    name = '+terminal' ,
    [";"] = {":FloatermNew --wintype=normal --height=6<cr>" , "terminal"},
    ["z"] = {":FloatermNew fzf<cr>" , "fzf"},
    ["g"] = {":FloatermNew lazygit<cr>" , "git"},
    ["d"] = {":FloatermNew lazydocker<cr>" , "docker"},
    ["n"] = {":FloatermNew node<cr>" , "node"},
    ["N"] = {":FloatermNew nnn<cr>" , "nnn"},
    ["p"] = {":FloatermNew python<cr>" , "python"},
    ["r"] = {":FloatermNew ranger<cr>" , "ranger"},
    [";"] = {":FloatermToggle<cr>" , "toggle"},
  },

  ['n'] = {":NvimTreeToggle<cr>", "Nvim Toggle"},
  -- [''] = {"", ""},
  -- [''] = {"", ""},
  ['f'] = {"<cmd>Telescope find_files<cr>",  "Telescope file finder" },
}, { prefix = '<leader>' })
