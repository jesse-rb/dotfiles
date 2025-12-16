-- Useful defaults reference from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

-- set telescope
vim.g.lazyvim_picker = "telescope"

-- tabbing
vim.opt.shiftwidth = 4     -- indent width
vim.opt.tabstop = 4        -- tab spacing
vim.opt.expandtab = true   -- tabs to spaces
vim.opt.autoindent = true  -- new line indent carry over

vim.opt.winbar = "%=%m %f" -- For each winow, show some useful info (useful with splits)

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- no wrapping lines
vim.opt.wrap = false

-- scrolling
vim.opt.smoothscroll = true

-- borders
vim.opt.winborder = "single"
