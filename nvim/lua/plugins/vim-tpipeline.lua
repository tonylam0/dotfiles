return {
  "vimpostor/vim-tpipeline",
  config = function()
    -- Automatically embed Vim statusline into Tmux
    vim.g.tpipeline_autoembed = 1
    vim.g.tpipeline_restore = 1
    vim.g.tpipeline_clearstl = 1
  end,
}
