-- Nice example keymaps from lazyvim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

-- Exit insert mode with jk
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Allow indenting multiple times without selection disappearing
vim.keymap.set("v", "<", "<gv", { desc = "Allow indenting without selection disappearing" })
vim.keymap.set("v", ">", ">gv", { desc = "Allow indenting without selection disappearing" })

-- stop yanking stuff all the time!!
vim.keymap.set("n", "c", '"_c', { desc = "Change without yanking!" })
vim.keymap.set("v", "c", '"_c', { desc = "Change without yanking!" })
vim.keymap.set("v", "p", '"_dp', { desc = "Paste without yanking!" })
vim.keymap.set("n", "x", '"_x', { desc = "Delete character without yanking!" })

-- nvim config shortcuts
vim.keymap.set(
    "n",
    "<leader>ck",
    ":e ~/.config/nvim/lua/jesse-rb/config/keymaps.lua<CR>",
    { desc = "Open config: keymaps" }
)
vim.keymap.set(
    "n",
    "<leader>co",
    ":e ~/.config/nvim/lua/jesse-rb/config/options.lua<CR>",
    { desc = "Open config: options" }
)

-- marks
vim.keymap.set(
    "n",
    "<leader>mc",
    ":delmarks! | :delmarks A-Z0-9<CR>",
    { desc = "Delete all marks" }
)
vim.keymap.set("n", "<leader>mv", ":marks<CR>", { desc = "View all marks" })

-- Telescope
local telescope_builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", telescope_builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", telescope_builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", telescope_builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", telescope_builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fm", telescope_builtin.marks, { desc = "Telescope marks" })
vim.keymap.set(
    "n",
    "<leader>flr",
    telescope_builtin.lsp_references,
    { desc = "Telescope lsp references" }
)

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
vim.keymap.set(
    "n",
    "<leader>k",
    "<cmd>lua vim.diagnostic.open_float()<CR>",
    { desc = "Show diagnostic float" }
)
vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition" })

-- Open diagnostic quickfix list
vim.keymap.set("n", "<leader>d", function()
    vim.diagnostic.setqflist()
end, { desc = "Open diagnostics quickfix list" })

-- notification history
vim.keymap.set(
    "n",
    "<leader>n",
    "<cmd>lua Snacks.notifier.show_history()<CR>",
    { desc = "Show notification history" }
)

-- toggle quickfix list
vim.keymap.set("n", "<leader>q", function()
    local qf_open = false
    for _, win in ipairs(vim.fn.getwininfo()) do
        if win.quickfix == 1 then
            qf_open = true
            break
        end
    end
    if qf_open then
        vim.cmd("cclose")
    else
        vim.cmd("copen")
    end
end, { desc = "Toggle quickfix list" })

-- copy current buffer relative path
vim.keymap.set("n", "<leader>crp", ':let @+ = expand("%:.")<CR>', {
    noremap = true,
    silent = true,
    desc = "Copy current buffer relative file path",
})

-- search and navigation (centered)
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- VS code style move line up/down using alt
-- vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
-- vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- command
vim.keymap.set("n", "<leader><leader>", ":", { desc = "Start writing command" })
