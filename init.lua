-- MUST BE FIRST LINE
require('config.setting') -- do not move
require('config.async')
require('config.completion_wild')
require('config.sources')
require('config.octo')
require('config.keymaps')
require('config.autocmds')
require('packages')
-- lsp
require('lsp.install')
require('lsp')
require('lsp.customization')
require('lsp.cmp')
require('lsp.lint')
require('lsp.lsp_lines')
-- -- core
require('core.floaterm')
require('core.treesitter')
require('core.whichkey')
require('core.telescope')
require('core.gitsigns')
require('core.trouble')
require('core.nvimtree')
require('core.dashboard')
require('core.session')
-- require('core.neorg')
-- -- notify
require('notify_config')
require('notify_config.on_enter')
-- vimspector
require('core.vimspector')
-- aesthetics
require('aesthetics')
require('aesthetics.devicons')
require('aesthetics.feline')
require('aesthetics.bufferline')
-- colors
require('colors.highlights')
