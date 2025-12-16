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
map('n', '<leader>b', function() Snacks.picker.buffers() end, { desc = 'Find Buffers' })
map('n', '<leader>g', function() Snacks.picker.grep() end, { desc = 'Grep' })
