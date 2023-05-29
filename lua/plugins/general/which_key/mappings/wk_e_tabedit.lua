local wk = require("which-key")

wk.register({
  ["e"] = {
    name = '+Tabedit ',
    ["e"] = {':tabe <cr>'                                             , 'empty file'},
    ["i"] = {':tabedit ~/.config/nvim/init.lua<cr>'                   , 'Lua init'},
    ["v"] = {':tabedit ~/.vimrc<cr>'                                  , 'vimrc'},
    ["w"] = {':tabedit ~/.config/nvim/lua/core/whichkey.lua<cr>'      , 'which key'},
  },
}, { prefix = "<leader>" })
