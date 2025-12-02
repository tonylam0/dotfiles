return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  -- enabled = true,
  -- enabled = vim.g.neovim_mode ~= "skitty", -- Disable lualine for skitty mode
  opts = function(_, opts)
    if vim.g.neovim_mode == "skitty" then
      -- For skitty mode, only keep section_x and disable all others
      opts.sections = {
        lualine_a = {
          function()
            return "to-do list"
          end, -- Ensures it's displayed properly
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      }
    end
  end,
}
