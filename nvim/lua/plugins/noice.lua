return {
  "folke/noice.nvim",
  opts = {
    routes = {
      {
        filter = {
          event = "lsp",
          kind = "progress",
          cond = function(message)
            local client = vim.tbl_get(message.opts, "progress", "client")
            return client == "jdtls" -- Skip progress from Java only
          end,
        },
        opts = { skip = true },
      },
    },
  },
}
