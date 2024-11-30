local keymap = vim.keymap

-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- do not yank with x
keymap.set('n', 'x', '"_x', {
    desc = 'do not yank with x'
})

-- split window
keymap.set('n', '<leader>sh', ':split<Return><C-w>w', {
    desc = 'split window (horizontal)',
    silent = true
})
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', {
    desc = 'split window (vertical)',
    silent = true
})
keymap.set('n', '<leader>wc', ':close<Return>', {
    desc = 'close window',
    silent = true
})

-- move to window
keymap.set('n',  '<leader>wh', '<C-w>h', {
    desc = 'move to left window'
})
keymap.set('n', '<leader>wk', '<C-w>k', {
    desc = 'move to bottom window'
})
keymap.set('n', '<leader>wj', '<C-w>j', {
    desc = 'move to top window'
})
keymap.set('n', '<leader>wl', '<C-w>l', {
    desc = 'move to right window'
})

-- tabs
keymap.set('n', '<leader>to', ':tabnew<Return>', {
    desc = 'open new tab'
})
keymap.set('n', '<leader>tf', ':tabnew %<Return>', {
    desc = 'open current file in new tab'
})
keymap.set('n', '<leader>tc', ':tabclose<Return>', {
    desc = 'close current tab'
})
keymap.set('n', '<leader>[', ':tabp<Return>', {
    desc = 'go to previous tab'
})
keymap.set('n', '<leader>]', ':tabn<Return>', {
    desc = 'go to next tab'
})

-- terminal in vertical mode
keymap.set('n', '<leader>th', ':split<Return><C-w>w|:terminal<Return>', {
    desc = 'split new terminal (horizontal)',
    silent = true
})
keymap.set('n', '<leader>tv', ':vsplit<Return><C-w>w|:terminal<Return>', {
    desc = 'split new terminal (vertical)',
    silent = true
})

-- In terminal mode, go to normal mode
keymap.set('t', '<esc>', '<C-\\><C-n>')
