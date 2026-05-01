return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettier" },
            javascriptreact = { "prettier" },
            typescript = { "prettier" },
            typescriptreact = { "prettier" },
            css = { "prettier" },
            html = { "prettier" },
            json = { "prettier" },
            -- python = { "ruff_format", "ruff_organize_imports" },
        },
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true, -- for using lsp formatters such as gopls
        },
    },
}
