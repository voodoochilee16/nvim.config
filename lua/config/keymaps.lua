-- Direct navigation commands that bypass all plugins
local direct_nav_commands = {
  -- Basic navigation
  ["gg"] = function()
    vim.api.nvim_win_set_cursor(0, { 1, 0 })
  end,
  ["G"] = function()
    local line_count = vim.api.nvim_buf_line_count(0)
    vim.api.nvim_win_set_cursor(0, { line_count, 0 })
  end,

  -- Add any other navigation commands that might be affected
  ["<C-d>"] = function()
    local win_height = vim.api.nvim_win_get_height(0)
    local cur_line = vim.api.nvim_win_get_cursor(0)[1]
    local new_line = math.min(cur_line + math.floor(win_height / 2), vim.api.nvim_buf_line_count(0))
    vim.api.nvim_win_set_cursor(0, { new_line, 0 })
  end,

  ["<C-u>"] = function()
    local win_height = vim.api.nvim_win_get_height(0)
    local cur_line = vim.api.nvim_win_get_cursor(0)[1]
    local new_line = math.max(cur_line - math.floor(win_height / 2), 1)
    vim.api.nvim_win_set_cursor(0, { new_line, 0 })
  end,
}

-- Apply all direct navigation commands
for lhs, rhs in pairs(direct_nav_commands) do
  vim.keymap.set({ "n", "v" }, lhs, rhs, {
    desc = "Direct " .. lhs .. " navigation",
    silent = true,
  })
end

-- Add a diagnostic command to help troubleshoot
vim.api.nvim_create_user_command("NavTest", function()
  print("Testing navigation commands...")

  -- Get current position
  local start_line = vim.api.nvim_win_get_cursor(0)[1]
  print("Starting at line: " .. start_line)

  -- Test gg
  direct_nav_commands["gg"]()
  local after_gg = vim.api.nvim_win_get_cursor(0)[1]
  print("After gg: line " .. after_gg)

  -- Test G
  direct_nav_commands["G"]()
  local after_G = vim.api.nvim_win_get_cursor(0)[1]
  print("After G: line " .. after_G)

  -- Return to starting position
  vim.api.nvim_win_set_cursor(0, { start_line, 0 })
  print("Returned to line: " .. vim.api.nvim_win_get_cursor(0)[1])

  -- Print buffer info
  print("Total lines in buffer: " .. vim.api.nvim_buf_line_count(0))
  print("Current filetype: " .. vim.bo.filetype)
end, {})
