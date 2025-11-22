require("config.lazy")

-- Turn off WinBar for Neo-tree and other special windows
vim.api.nvim_create_autocmd("FileType", {
  pattern = "neo-tree",
  callback = function()
    vim.opt_local.winbar = nil
  end,
})
