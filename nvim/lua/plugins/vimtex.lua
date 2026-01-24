return {
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_compiler_method = "tectonic"
      vim.g.vimtex_compiler_tectonic = {
        out_dir = "build",
      }

      vim.g.vimtex_quickfix_ignore_filters = {
        "Shell escape disabled", -- Ignores the Tectonic security warning
        "Missing character: There is no", -- Ignores the TikZ nullfont bug
      }
    end,
  },
}
