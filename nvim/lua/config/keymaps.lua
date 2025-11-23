-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Map <Space> D to open the Dashboard
vim.keymap.set("n", "<leader>D", function()
  Snacks.dashboard.open()
end, { desc = "Open Dashboard" })

vim.keymap.set("n", "<leader>m", function()
  vim.cmd("MarkdownPreview")
end, { desc = "Run MarkdownPreview" })

vim.keymap.set("n", "<leader>h", "<Home>", { desc = "Go to start of line" })
vim.keymap.set("n", "<leader>j", "<End>", { desc = "Go to end of line" })

vim.keymap.set("v", "<leader>h", "<Home>", { desc = "Go to start of line" })
vim.keymap.set("v", "<leader>j", "<End>", { desc = "Go to end of line" })
vim.keymap.set("n", "<leader>p", ":put _<CR>", { desc = "Add blank line below" })

vim.keymap.set("n", "y<leader>h", "y0", { desc = "Yank to start of line" })
vim.keymap.set("n", "y<leader>j", "y$", { desc = "Yank to end of line" })

vim.keymap.set("n", "gh", "G", { desc = "Last line" })
