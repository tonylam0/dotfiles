local cosmic_gold = "#E5C07B" -- Matches your folder icons & stars
local cosmic_orange = "#D65D0E" -- Matches the rocket/poster accents
local cosmic_text = "#EBDBB2" -- Warm beige text (Gruvbox)
local subtle_gray = "#928374"
local comp_gold = "#458588" -- Complimentary color to cosmic_gold

-- Apply these colors to the Dashboard
vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = cosmic_gold, bold = true }) -- The Header Art
vim.api.nvim_set_hl(0, "SnacksDashboardKey", { fg = cosmic_orange, bold = true }) -- The Keys (1, 2, f)
vim.api.nvim_set_hl(0, "SnacksDashboardDesc", { fg = cosmic_gold }) -- The text descriptions
vim.api.nvim_set_hl(0, "SnacksDashboardIcon", { fg = cosmic_gold }) -- Icons

vim.g.neovim_mode = vim.env.NEOVIM_MODE or "default"
vim.opt.swapfile = false
vim.opt.wrap = false
vim.g.netrw_hide = 0
vim.opt.relativenumber = false
vim.g.lazyvim_inlay_hints = false

if vim.g.neovim_mode == "skitty" then
  vim.opt.laststatus = 0
  vim.opt.number = false
  vim.opt.statusline = "%m"
  vim.opt.signcolumn = "no"
  vim.opt.textwidth = 80

  -- Changes the top of the bar to have the file name (date) and my name
  vim.opt.winbar = "%{expand('%:t:r')} %= tonycs "

  vim.keymap.set("n", "o", function()
    local line = vim.api.nvim_get_current_line()
    -- If current line is a task (starts with - [ ]), add a new one below
    if line:match("%- %[.%]") then
      return "o- [ ] "
    else
      return "o"
    end
  end, { expr = true })

  -- Auto-create new task when pressing 'Enter' in Insert Mode
  vim.keymap.set("i", "<CR>", function()
    local line = vim.api.nvim_get_current_line()
    if line:match("%- %[.%]") then
      return "<CR>- [ ] "
    else
      return "<CR>"
    end
  end, { expr = true })

  vim.keymap.set("n", "<CR>", function()
    local line = vim.api.nvim_get_current_line()
    local changed_line = line

    if line:match("%- %[ %]") then
      changed_line = line:gsub("%- %[ %]", "- [x]") -- If line is unchecked, check it
    elseif line:match("%- %[x%]") then
      changed_line = line:gsub("%- %[x%]", "- [ ]") -- If line is checked, check it
    end

    vim.api.nvim_set_current_line(changed_line)
  end)

  local function to_do_template()
    -- Uncomment date lines if you want to include date at the top
    -- local date = os.date("%A, %B %d, %Y") -- Ex. "Friday, November 21, 2025"
    local template = {
      -- date,
      "- [ ] ",
    }

    vim.api.nvim_buf_set_lines(0, 0, -1, false, template)

    local last_line = vim.api.nvim_buf_line_count(0)
    vim.api.nvim_win_set_cursor(0, { last_line, 6 }) -- Puts cursor at first task box
    vim.cmd("startinsert!") -- Exclamation mark sets cursor after character
  end

  vim.api.nvim_create_autocmd({ "BufNewFile", "BufReadPost" }, {
    pattern = "*.md",
    callback = function()
      if vim.api.nvim_buf_line_count(0) == 1 and vim.api.nvim_get_current_line() == "" then
        to_do_template()
      end
    end,
  })

  -- -- This auto-syncs to git
  -- vim.api.nvim_create_autocmd("BufWritePost", {
  --   pattern = "*.md", -- Only sync markdown files (or use "*" for all)
  --   callback = function()
  --     -- We use jobstart so it runs in the background (async)
  --     -- without freezing your editor while it pushes.
  --     vim.fn.jobstart("git add . && git commit -m 'Auto-save: '\"$(date)\" && git push", {
  --       on_exit = function(_, return_val)
  --         if return_val == 0 then
  --           print("Changes pushed to Git")
  --         else
  --           print("Git push failed")
  --         end
  --       end,
  --     })
  --   end,
  -- })
end
