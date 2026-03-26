-- Useful defaults reference from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
--                               and from: https://github.com/radleylewis/nvim-lite/blob/master/init.lua

-- set telescope
vim.g.lazyvim_picker = "telescope"

-- tabbing
vim.opt.shiftwidth = 4 -- indent width
vim.opt.tabstop = 4 -- tab spacing
vim.opt.softtabstop = 4 -- soft tab stop on tab/backspace (e.g. while editing a mix of tab/spaces might be inserted)
vim.opt.expandtab = true -- tabs to spaces
vim.opt.autoindent = true -- new line indent carry over

-- line numbers
vim.opt.number = true -- line number
vim.opt.relativenumber = true -- relative line numbers
vim.opt.cursorline = true -- highlight current line
vim.opt.scrolloff = 10 -- keep 10 lines above/below the cursor
vim.opt.sidescrolloff = 10 -- keep 10 cols to the left/right of the cursor

-- no wrapping lines
vim.opt.wrap = false

-- scrolling
vim.opt.smoothscroll = true

-- borders
vim.opt.winborder = "single"

-- searching
vim.opt.ignorecase = true -- case insensitive search
vim.opt.smartcase = true -- case sensitive search if search term contains an uppercase
vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show matches as you type

-- ui other
vim.opt.signcolumn = "yes" -- show a sign column
vim.opt.colorcolumn = "100" -- show a column at 100 columns across
vim.opt.showmatch = true -- highlight matching bracket pairs
vim.opt.showmode = false -- do not show the mode, instead have it in statusline
vim.opt.conceallevel = 0 -- do not hide markup
vim.opt.concealcursor = "" -- do not hide cursorline in markup

-- buffer
vim.opt.autoread = true -- auto read external changes
vim.opt.autowrite = true -- auto save external changes e.g. claude?
vim.opt.backspace = "indent,eol,start" -- backspace behaviour
vim.opt.mouse = "a" -- enable mouse support
vim.opt.encoding = "utf-8" -- set encoding
vim.opt.swapfile = false -- do not write swapfile

-- splits
vim.opt.splitbelow = true -- horizontal splits go below
vim.opt.splitright = true -- vertical splits go right
