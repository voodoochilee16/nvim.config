return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", config = true, opts = { contrast = "hard", transparent_mode = true } },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
