return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional: you can also use fzf-lua, snacks, mini-pick instead.
    },
    ft = "python", -- Load when opening Python files
    keys = {
      { ",v", "<cmd>VenvSelect<cr>" }, -- Open picker on keymap
    },
    opts = {
      search = {
        venv = {
          -- "fd" command with --no-ignore to see inside .gitignore
          command = "fd python$ --no-ignore --hidden --full-path --color never -E /proc",
        },
        system = {
          -- This searches for 'python3' in Homebrew and System folders
          command = "fd python3$ /opt/homebrew/bin --full-path --color never",
        },
      },
      options = {}, -- if you add plugin options, they go here.
    },
  },
}
