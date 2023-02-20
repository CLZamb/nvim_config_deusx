return {
  'nvim-tree/nvim-web-devicons',

  config = function(_, _)
    require'nvim-web-devicons'.setup {
      -- your personnal icons can go here (to override)
      -- DevIcon will be appended to `name`
      override = {
        zsh = {
          icon = "",
          color = "#428850",
          cterm_color = "65",
          name = "Zsh"
        }
      };
      color_icons = true;
      -- globally enable default icons (default to false)
      -- will get overriden by `get_icons` option
      default = true;
    }
  end
}
