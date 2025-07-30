-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- set my favorite user theme
-- vim.cmd.colorscheme("eldritch")

-- set the tab info universally
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- make sure that vim includes these when operating on words
vim.opt.iskeyword:append("-") -- Include hyphens
vim.opt.iskeyword:append("_") -- Include underscores
