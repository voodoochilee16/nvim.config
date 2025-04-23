return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    -- Configure which-key using the new format
    opts.defaults = opts.defaults or {}

    -- Update to use the new spec format
    if not opts.defaults[{ "g" }] then
      opts.defaults[{ "g" }] = { group = "goto" }
      opts.defaults[{ "gg" }] = { "gg", desc = "First Line" }
    end

    -- Set a shorter timeout for command sequences
    opts.timeoutlen = 0 -- This makes commands like gg execute immediately

    -- Use the new keys format instead of popup_mappings
    opts.keys = opts.keys or {}
    opts.keys.scroll_down = "<c-d>"
    opts.keys.scroll_up = "<c-u>"

    return opts
  end,
  config = function(_, opts)
    require("which-key").setup(opts)

    -- Add a direct mapping for gg that bypasses which-key
    vim.keymap.set("n", "gg", function()
      -- Use direct cursor positioning for maximum reliability
      vim.api.nvim_win_set_cursor(0, { 1, 0 })
    end, { desc = "Go to first line (override)" })
  end,
}
