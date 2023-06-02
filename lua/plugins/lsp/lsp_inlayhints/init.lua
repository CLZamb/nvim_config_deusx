local cur_path = require("paths").lsp .. "lsp_inlayhints."

return {
  'lvimuser/lsp-inlayhints.nvim',

  branch = "anticonceal",

  init = function()
    vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
    vim.api.nvim_create_autocmd("LspAttach", {
      group = "LspAttach_inlayhints",
      callback = function(args)
        if not (args.data and args.data.client_id) then
          return
        end

        local bufnr = args.buf
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        require("lsp-inlayhints").on_attach(client, bufnr)
      end,
    })
  end,

  opts = require( cur_path .."opts"),

  config = function(_, opts)
    local fg_colors = require(cur_path .. "colors").get_fg()
    local bg_colors = require(cur_path .. "colors").get_bg()
    local highlights = require('ui.highlights_util')

    require("lsp-inlayhints").setup(opts)
    highlights.fg_groups(fg_colors)
    highlights.bg_groups(bg_colors)
  end
}
