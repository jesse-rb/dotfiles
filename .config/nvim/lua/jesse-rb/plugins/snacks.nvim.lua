return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        zen = {
            enabled = true,
        },
        bigfile = { enabled = true },
        indent = { enabled = true },
        input = { enabled = true },
        notifier = { enabled = true },
        scroll = { enabled = true },
        scope = { enabled = false },
        statuscolumn = { enabled = false },
        words = { enabled = false },
        dashboard = { enabled = false },
        explorer = { enabled = false },
        picker = { enabled = false },
        quickfile = { enabled = false },
    },

    vim.keymap.set("n", "<leader>bz", function()
        Snacks.zen()
    end, { desc = "Toggle buffer zen mode" }),
    vim.keymap.set("n", "<leader>bd", function()
        Snacks.bufdelete.delete()
    end, { desc = "Delete current buffer" }),
    vim.keymap.set("n", "<leader>ba", function()
        Snacks.bufdelete.all()
    end, { desc = "Delete all buffers" }),
    vim.keymap.set("n", "<leader>bo", function()
        Snacks.bufdelete.other()
    end, { desc = "Delete all OTHER buffers" }),
}
