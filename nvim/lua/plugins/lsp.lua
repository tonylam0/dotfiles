return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- 1. Your existing TexLab configuration
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

      vtsls = {
        settings = {
          typescript = {
            inlayHints = {
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
          javascript = {
            inlayHints = {
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              variableTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              enumMemberValues = { enabled = false },
            },
          },
        },
      },
    },
  },
}
