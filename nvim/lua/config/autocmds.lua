-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    -- Remove 'c' (auto-wrap comments), 'r' (auto-insert comment leader on Enter),
    -- and 'o' (auto-insert comment leader on 'o'/'O')
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = {
    vim.fn.expand("~") .. "/growth/*",
    vim.fn.expand("~") .. "/Documents/book/*",
  },

  callback = function()
    vim.opt.winbar = ""
    vim.opt.signcolumn = "no"
    vim.opt.number = false

    -- Hide the split separators of the windows (horizontal and vertical lines)
    -- This replaces the line characters with empty spaces
    vim.opt.fillchars:append("horiz: ,horizup: ,horizdown: ,vert: ,vertleft: ,vertright: ,verthoriz: ")

    -- Delay the Goyo command in order to make cursor automatically be on
    -- the text rather than be on the left side of the screen.
    vim.defer_fn(function()
      vim.cmd("Goyo")
    end, 10)
  end,
})

vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = vim.fn.expand("~") .. "/growth/*",

  callback = function()
    local date_header = tostring(os.date("%B %d, %Y (%A)"))
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)

    -- Check if the date already exists anywhere in the file
    local found = false
    for _, line in ipairs(lines) do
      if line:find(date_header, 1, true) then
        found = true
        break
      end
    end

    -- If not found, append it to the bottom
    if not found then
      -- Append an empty line for spacing, then the date, then another empty line
      vim.api.nvim_buf_set_lines(0, -1, -1, false, { "", date_header, "", "" })
      vim.cmd("normal! G")

      -- Uncomment to start in insert mode
      -- vim.cmd("startinsert")
    end
  end,
})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
  end,
})
