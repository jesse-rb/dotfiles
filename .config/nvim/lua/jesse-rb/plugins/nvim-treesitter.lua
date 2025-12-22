return {
    "nvim-treesitter/nvim-treesitter",
    branch = "master", -- stable version
    build = ":TSUpdate",
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            auto_install = true,
            ensure_installed = {
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
