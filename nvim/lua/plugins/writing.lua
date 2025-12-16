return {
  {
    "junegunn/goyo.vim",
    dependencies = { "junegunn/limelight.vim" },
    config = function()
      -- OPTIONAL: Set default width (default is 80)
      vim.g.goyo_width = 100

      -- Trigger Limelight when entering Goyo
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoEnter",
        callback = function()
          require("lualine").hide() -- Hide lualine if you use it
          vim.cmd("Limelight")
        end,
      })

      -- Turn off Limelight when leaving Goyo
      vim.api.nvim_create_autocmd("User", {
        pattern = "GoyoLeave",
        callback = function()
          require("lualine").hide({ unhide = true }) -- Show lualine again
          vim.cmd("Limelight!")
        end,
      })
    end,
  },
}
