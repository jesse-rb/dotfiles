return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
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
}
