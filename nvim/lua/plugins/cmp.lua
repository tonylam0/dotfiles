return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      -- 1. Disable automatic popup (menu will only show when you press Ctrl+Space)
      opts.completion = { autocomplete = false }

      -- 2. Force <CR> to always be a Newline, never a confirm
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping({
          i = function(fallback)
            if cmp.visible() then
              cmp.abort() -- Force close the menu
              fallback() -- Trigger the standard Enter key (newline)
            else
              fallback()
            end
          end,
          s = cmp.mapping.confirm({ select = true }),
          c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
        }),

        -- Keep your Ctrl+y setting to confirm
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
      })
    end,
  },
}
