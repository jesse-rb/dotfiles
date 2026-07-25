return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
        routes = {
            {
                -- Filter out 'No information available' notification,
                -- as this can happen often when multiple lsps are active simultaneously
                filter = {
                    event = "notify",
                    find = "No information available",
                },
                opts = {
                    skip = true,
                },
            },
        },
    },
    dependencies = {
        -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
        --   If not available, we use `mini` as the fallback
        -- "rcarriga/nvim-notify",
    },
}
