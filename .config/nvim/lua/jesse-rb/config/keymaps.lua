-- Nice example keymaps from lazyvim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Allow indenting multiple times without selection disappearing
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- stop yanking stuff all the time!!
vim.keymap.set("n", "c", '"_c', { desc = "Change without yanking!" })
vim.keymap.set("v", "c", '"_c', { desc = "Change without yanking!" })
vim.keymap.set("v", "p", '"_dp', { desc = "Paste without yanking!" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without yanking!" })

-- nvim config shortcuts
vim.keymap.set("n", "<leader>ck", ":e ~/.config/nvim/lua/jesse-rb/config/keymaps.lua<CR>",
    { desc = "Open config: keymaps" })
vim.keymap.set("n", "<leader>co", ":e ~/.config/nvim/lua/jesse-rb/config/options.lua<CR>",
    { desc = "Open config: options" })

-- snacks.nvim
vim.keymap.set('n', '<leader>ft', function() Snacks.picker.files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>ff', function() Snacks.picker.files() end, { desc = 'Find Files' })
vim.keymap.set('n', '<leader>fb', function() Snacks.picker.buffers() end, { desc = 'Find Buffers' })
vim.keymap.set('n', '<leader>fg', function() Snacks.picker.grep() end, { desc = 'Grep' })

-- buffers
vim.keymap.set("n", "H", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "L", ":bnext<CR>", { desc = "Next buffer", })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close buffer", })
vim.keymap.set("n", "<leader>bo", ":%bd|e#<CR>", { desc = "Close all other buffers", })

-- windows
vim.keymap.set("n", "-", "<C-w>s", { desc = "Horizontal split" })
vim.keymap.set("n", "|", "<C-w>v", { desc = "Vertical split" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to lower split" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to upper split" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to right split" })

-- terminal
-- veritcal
vim.keymap.set("n", "<leader>t-", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("J")
    vim.api.nvim_win_set_height(0, 10)
    vim.cmd.normal("a")
end, { desc = "Open terminal in vertical split" })
-- horizontal
vim.keymap.set("n", "<leader>t|", function()
    vim.cmd.vnew()
    vim.cmd.term()
    vim.cmd.wincmd("L")
    vim.api.nvim_win_set_width(0, 50)
    vim.cmd.normal("a")
end, { desc = "Open terminal in horizontal split" })
-- Exit terminal insert mode to normal mode
vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal escape to normal mode" })

-- lsp
vim.keymap.set('n', '<leader>k', '<cmd>lua vim.diagnostic.open_float()<CR>', { desc = "Show diagnostic float" })
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', { desc = "Go to definition" })

-- Open diagnostic quickfix list
vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.setqflist()
end, { desc = 'Open diagnostics quickfix list' })

-- notification history
vim.keymap.set("n", "<leader>n", "<cmd>lua Snacks.notifier.show_history()<CR>", { desc = "Show notification history" })
