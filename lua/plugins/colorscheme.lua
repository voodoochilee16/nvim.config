return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", config = true, opts = { contrast = "hard", transparent_mode = false } },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = false,
    },

    {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        transparent = true,
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- colorscheme = "storm",
    },
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "moonfly",
      -- colorscheme = "gruvbox",
      -- colorscheme = "solarized-osaka",
      colorscheme = "tokyonight-night",
      -- colorscheme = "tokyonight-moon",
      -- colorscheme = "cyberdream",
    },
  },
}
