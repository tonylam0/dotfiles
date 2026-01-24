return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      texlab = {
        settings = {
          texlab = {
            chktex = {
              onOpenAndSave = false,
              onEdit = false,
            },
            diagnostics = {
              ignoredPatterns = { "Shell escape disabled" },
            },
            diagnosticsDelay = 500,
            latexFormatter = "none",
          },
        },
      },
    },
  },
}
