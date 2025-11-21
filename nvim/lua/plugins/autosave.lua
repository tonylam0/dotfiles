return {
  {
    "pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup({
        enabled = true, -- start auto-save when the plugin is loaded
        trigger_events = { "InsertLeave", "TextChanged" }, -- save when you leave insert mode or change text
        debounce_delay = 1000, -- saves 1 second after you stop typing
      })
    end,
  },
}
