-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Map <Space> D to open the Dashboard
vim.keymap.set("n", "<leader>D", function()
  Snacks.dashboard.open()
end, { desc = "Open Dashboard" })
