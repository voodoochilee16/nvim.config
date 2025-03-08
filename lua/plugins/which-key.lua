return {
  "folke/which-key.nvim",
  opts = function(_, opts)
    -- Remove 'g' from the triggers
    opts.triggers_nowait = opts.triggers_nowait or {}
    opts.triggers_nowait = vim.list_extend(opts.triggers_nowait, { "g" })
    -- Or alternatively, completely disable which-key for 'g'
    opts.triggers_blacklist = {
      -- list existing blacklist values
      n = { "g" },
      i = { "j", "k" },
      v = { "j", "k" },
    }
  end,
}
