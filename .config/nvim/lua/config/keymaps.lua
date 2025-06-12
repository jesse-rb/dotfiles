-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Stop yanking stuff all the time!!
map("n", "c", '"_c', { desc = "Change without yanking!" })
map("v", "c", '"_c', { desc = "Change without yanking!" })

map("v", "p", '"_dp', { desc = "Paste without yanking!" })

map("n", "x", '"_x', { desc = "Delete character without yanking!" })
