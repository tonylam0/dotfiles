return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      ignored = true,
      hidden = true,
      exclude = { ".git" },

      sources = {
        explorer = {
          layout = {
            layout = {
              width = 30,
            },
          },
        },
      },
    },
  },
}
