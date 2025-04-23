return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim", config = true, opts = { contrast = "hard", transparent_mode = true } },

  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  {
    "nxstynate/rosePine.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent_mode = true,
      overrides = {
        -- Improve contrast for cursor line
        CursorLine = { bg = "#2a273f" }, -- Darker purple background for cursor line
        -- Also improve visual selection contrast if needed
        Visual = { bg = "#3a3452" }, -- Slightly brighter purple for visual selection
        -- If line numbers on the cursor line are also hard to read
        CursorLineNr = { fg = "#e0def4", bold = true },
      },
    },
  },

  {
    "craftzdog/solarized-osaka.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
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
      transparent = true,
      styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "transparent", -- style for sidebars, see below
        floats = "transparent", -- style for floating windows
      },
    },
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "moonfly",
      -- colorscheme = "gruvbox",
      -- colorscheme = "solarized-osaka",
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "rosePine",
      colorscheme = "tokyonight-moon",
      -- colorscheme = "cyberdream",
    },
  },
}
