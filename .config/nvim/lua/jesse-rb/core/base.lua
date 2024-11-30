-- set vim file explorer to tree format
vim.cmd("let g:netrw_liststyle = 3")

-- line numbers
vim.wo.number = true

-- tabbing
vim.opt.shiftwidth = 4 -- indent width
vim.opt.tabstop = 4 -- tab spacing
vim.opt.expandtab = true -- tabs to spaces
vim.opt.autoindent = true -- new line indent carry over

-- no wrapping lines
vim.opt.wrap = false

-- search settings
vim.opt.ignorecase = true -- case insensitive

-- backspace settings
vim.opt.backspace = 'indent,eol,start' -- backspace indetns

-- theming
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.signcolumn = 'yes'

