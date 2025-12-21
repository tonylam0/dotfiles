-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Map <Space> D to open the Dashboard
vim.keymap.set("n", "<leader>D", function()
  Snacks.dashboard.open()
end, { desc = "Open Dashboard" })

vim.keymap.set("n", "<leader>mp", function()
  vim.cmd("MarkdownPreview")
end, { desc = "Run MarkdownPreview" })

vim.keymap.set("n", "<leader>h", "<Home>", { desc = "Go to start of line" })
vim.keymap.set("n", "<leader>j", "<End>", { desc = "Go to end of line" })

vim.keymap.set("v", "<leader>h", "<Home>", { desc = "Go to start of line" })
vim.keymap.set("v", "<leader>j", "<End>", { desc = "Go to end of line" })
vim.keymap.set("n", "<leader>p", ":put _<CR>", { desc = "Add blank line below" })

vim.keymap.set("n", "yy", "y0", { desc = "Yank to start of line" })
vim.keymap.set("n", "yu", "y$", { desc = "Yank to end of line" })
vim.keymap.set("n", "yi", "yG", { desc = "Yank to last line" })
-- No need to make a keymap for yanking to first line -> ygg

-- Lua based function to avoid mistiming issues
vim.keymap.set("n", "gh", function()
  vim.cmd("normal! Gzz")
end, { desc = "Last line centered" })

vim.keymap.set("v", "gh", "G", { desc = "Last line" })

vim.keymap.set("n", "x", '"_x', { desc = "Delete without yanking" })
vim.keymap.set("v", "x", '"_x', { desc = "Delete without yanking" })

vim.keymap.set("t", "<Esc><Esc>", "<C-/><C-n>", { desc = "Go to normal mode" })

vim.keymap.set("n", "<leader>uu", "<leader>ufuu<leader>uf", { desc = "Undo without auto-formatter" })

vim.keymap.set("n", "<leader>gy", ":Goyo<CR>", { desc = "Reset Goyo mode" })

vim.keymap.set("v", "<leader>mb", 'c**<C-r>"**<Esc>', { desc = "Markdown Bold" })
vim.keymap.set("v", "<leader>mi", 'c*<C-r>"*<Esc>', { desc = "Markdown Italic" })

vim.keymap.set("n", "<leader>ll", "\\ll:cclose<CR>", { desc = "Vimtex compilation", remap = true })
vim.keymap.set("n", "<leader>lc", ":cclose<CR>", { desc = "Close vimtex window" })
vim.keymap.set("n", "<leader>ld", "\\lC", { desc = "Clean vimtex temporary files", remap = true })

vim.keymap.set("n", "<leader>mm", "%", { desc = "Go to matching pair" })
