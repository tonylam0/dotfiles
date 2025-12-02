return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          handlers = {
            ["language/status"] = function() end,
            ["$/progress"] = function() end,
          },
        },
      },
      inlay_hints = { enabled = false },
    },
  },
}
