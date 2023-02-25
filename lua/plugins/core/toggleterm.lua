return {
 'akinsho/toggleterm.nvim',

 event = "VeryLazy",

 config = function(_, _)
   require('toggleterm').setup({
     size = function(term)
       if term.direction == "horizontal" then
         return 15
       elseif term.direction == "vertical" then
         return vim.o.columns * 0.6
       end
     end,
   })
 end
}
