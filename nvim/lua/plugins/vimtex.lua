return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "skim"

    vim.g.vimtex_compiler_latexmk = {
      build_dir = "build",

      callback = 1,
      continuous = 1,
      executable = "latexmk",
    }
  end,
}
