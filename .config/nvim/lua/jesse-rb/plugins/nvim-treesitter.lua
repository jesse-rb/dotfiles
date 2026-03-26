return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- Cannot figure out how to get new main branch rewrite to work :(
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
                "vim",
                "markdown",
                "bash",
                "lua",
                "html",
                "css",
                "javascript",
                "typescript",
                "svelte",
                "go",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
