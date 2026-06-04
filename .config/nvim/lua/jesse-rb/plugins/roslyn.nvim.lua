return {
    "seblyng/roslyn.nvim",
    ---@module 'roslyn.config'
    ---@type RoslynNvimConfig
    opts = {
        extensions = {
            razor = {
                enabled = false,
                config = function()
                    return {}
                end,
            },
        },
    },
}
