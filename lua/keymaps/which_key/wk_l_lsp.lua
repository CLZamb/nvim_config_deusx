local wk = require("which-key")

wk.register({
  ["l"] = {
    name = "+Lsp",
    ["a"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>" , "Code action"},
    ["c"] = { "<cmd>lua vim.diagnostic.setloclist()<CR>" , "set loclist"},
    ["D"] = { "<cmd>lua vim.lsp.buf.declaration()<CR>" , "Go to declaration"},
    ["d"] = { "<cmd>lua vim.lsp.buf.definition()<CR>" , "Go to definition"},
    ["f"] = { "<cmd>lua vim.lsp.buf.format()<CR>" , "Formatting"},
    ["g"] = { "<cmd>TroubleToggle lsp_references<cr>" , "References"},
    ["i"] = { "<cmd>lua vim.lsp.buf.implementation()<CR>" , "Implementation"},
    ["l"] = { "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>" , "Inspect worspace folder"},
    ["n"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>" , "Go to next"},
    ["p"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>" , "Go to prev"},
    ["K"] = { "<cmd>lua vim.lsp.buf.hover()<CR>" , "Hover"},
    ["s"] = { "<cmd>lua vim.diagnostic.open_float()<CR>" , "Show line diagnostics"},
    ["S"] = { "<cmd>lua vim.lsp.buf.signature_help()<CR>" , "Signature help"},
    ["t"] = { "<cmd>lua vim.lsp.buf.type_definition()<CR>" , "Type definition"},
    ["r"] = { "<cmd>lua vim.lsp.buf.rename()<CR>" , "Rename"},
    ["R"] = { "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>" , "Remove workspace folder"},
    ["w"] = { "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>" , "Add worspace forlder"},
  },
}, { prefix = "<leader>" })
