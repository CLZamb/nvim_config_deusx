---- Get the current Neorg state
-- local neorg = require('neorg')
--
-- --- Loads the Neorg completion module
-- local function load_completion()
--     neorg.modules.load_module("core.norg.completion", nil, {
--         engine = "nvim-cmp" -- Choose your completion engine here
--     })
-- end
--
-- -- If Neorg is loaded already then don't hesitate and load the completion
-- if neorg.is_loaded() then
--     load_completion()
-- else -- Otherwise wait until Neorg gets started and load the completion module then
--     neorg.callbacks.on_event("core.started", load_completion)
-- end
-- -- Setup nvim-cmp.
local cmp_kinds = require("lsp.kinds").kind
local cmp = require 'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' }),
    ['<Tab>'] = cmp.mapping.confirm({ select = true }),
  },
  experimental = {
    -- native_menu = true,
    ghost_text = true,
  },
  sources = {
    -- { name = "neorg" },
    { name = 'ultisnips', keyword_length = 2},
    { name = 'path', keyword_length = 2 },
    { name = 'nvim_lua'},
    { name = 'nvim_lsp', keyword_length = 2},
    { name = 'buffer', keyword_length = 6 },
  },
  -- formatting = {
    --   fields = { 'abbr', 'kind','menu' },
    --   format = function(entry, vim_item)
      --     vim_item.kind = (cmp_kinds[vim_item.kind] or '') .. "  " .. vim_item.kind
      --     vim_item.abbr = string.sub(vim_item.abbr:gsub("^%W+", ""), 1, 45)
      --     vim_item.menu = ({
        --       buffer = "[Buffer]",
        --       nvim_lsp = "[LSP]",
        --       ultisnips = "[Snip]",
        --       nvim_lua = "[Lua]",
        --       path = "[Path]"
        --       -- latex_symbols = "[LaTeX]",
        --     })[entry.source.name]
        --     return vim_item
        --   end,
        -- },
  formatting = {
    fields = {'kind', 'abbr', 'menu' },
    format = function(entry, vim_item)
      vim_item.menu = " " ..  string.sub(vim_item.kind, 1, 4) .. "" or ''
      vim_item.kind = cmp_kinds[vim_item.kind] .." " or ""
      vim_item.abbr = string.sub(vim_item.abbr:gsub("^%W+", ""), 1, 35)
      return vim_item
    end,
  },
})
