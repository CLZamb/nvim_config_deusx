local wk = require("which-key")

wk.register({
  ["t"] = {
    name = '+Telescope',
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
    ["s"] = {'<cmd>Telescope lsp_document_symbols<cr>', 'Document Symbols'},
    ["S"] = {'<cmd>Telescope lsp_workspace_symbols<cr>', 'Workspace Symbols'},
    ["g"] = {
      "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<cr>",
      'Workspace Symbols'
    },
  }
}, { prefix = "<leader>" })
