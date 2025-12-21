return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- 1. Your existing TexLab configuration
      texlab = {
        settings = {
          texlab = {
            build = {
              executable = "latexmk",
              args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
              onSave = true,
              forwardSearchAfter = false,
            },
            forwardSearch = {
              executable = "open",
              args = { "-a", "Skim", "%p" },
            },
            chktex = {
              onOpenAndSave = false,
              onEdit = false,
            },
            diagnosticsDelay = 500,
            latexFormatter = "none",
          },
        },
        flags = {
          debounce_text_changes = 500,
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
