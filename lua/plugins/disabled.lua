return {
  -- { "zbirenbaum/copilot.lua", enabled = true },
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  -- {
  --   "ibhagwan/fzf-lua",
  --   enabled = false,
  -- },
  --
  -- Disable mini.animate if it's causing issues
  {
    "echasnovski/mini.animate",
    enabled = false, -- Completely disable the plugin
  },

  -- Disable any other animation plugins you might have
  -- For example, if you have smooth-scroll:
  -- { "karb94/neoscroll.nvim", enabled = false },

  -- If you're using noice.nvim, it has some animations that could interfere
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      -- Disable animations in noice
      opts.presets = opts.presets or {}
      opts.presets.lsp_doc_border = false

      -- Disable command line animations
      opts.cmdline = opts.cmdline or {}
      opts.cmdline.view = "cmdline" -- Use simple command line view

      -- Disable message animations
      opts.messages = opts.messages or {}
      opts.messages.view = "notify"
      opts.messages.view_error = "notify"
      opts.messages.view_warn = "notify"

      return opts
    end,
  },

  -- If you're using nvim-notify, disable its animations
  {
    "rcarriga/nvim-notify",
    opts = {
      stages = "static", -- Disable animation stages
    },
  },
}
