-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Allow indenting multiple times without selection disappearing
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- stop yanking stuff all the time!!
map("n", "c", '"_c', { desc = "Change without yanking!" })
map("v", "c", '"_c', { desc = "Change without yanking!" })
map("v", "p", '"_dp', { desc = "Paste without yanking!" })
map("n", "x", '"_x', { desc = "Delete character without yanking!" })

-- exploerer
map("n", "<leader>e", ":Explore<CR>", { desc = "Open file explorer" })

-- nvim config shortcuts
map("n", "<leader>cc", ":Explore ~/.config/nvim/lua<CR>", { desc = "Open config" })
map("n", "<leader>cp", ":Explore ~/.config/nvim/lua/plugins<CR>", { desc = "Open config: plugins" })
map("n", "<leader>ck", ":e ~/.config/nvim/lua/jesse-rb/core/keymaps.lua<CR>", { desc = "Open config: keymaps" })
map("n", "<leader>co", ":e ~/.config/nvim/lua/jesse-rb/core/options.lua<CR>", { desc = "Open config: options" })

-- snacks
map('n', '<leader>e', function() Snacks.picker.explorer() end, { desc = 'Find Files' })
map('n', '<leader>f', function() Snacks.picker.files() end, { desc = 'Find Files' })
map('n', '<leader>bs', function() Snacks.picker.buffers() end, { desc = 'Find Buffers' })
map('n', '<leader>g', function() Snacks.picker.grep() end, { desc = 'Grep' })

-- buffers
map("n", "H", ":bprevious<CR>", { desc = "Previous buffer" })
map("n", "L", ":bnext<CR>", { desc = "Next buffer", })
map("n", "<leader>bd", ":bdelete<CR>", { desc = "Close buffer", })

-- screens
map("n", "-", "<C-w>s", { desc = "Horizontal split" })
map("n", "|", "<C-w>v", { desc = "Vertical split" })


map("n", "<C-h>", "<C-w>h", { desc = "Go to left split" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower split" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper split" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right split" })

-- terminal
vim.keymap.set("n", "<leader>tv", ":split<CR><C-w>j:terminal<CR>", { desc = "Open terminal in split" })
-- Exit terminal insert mode to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal escape to normal mode" })
