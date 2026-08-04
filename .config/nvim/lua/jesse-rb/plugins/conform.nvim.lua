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
            php = { "pint" },
            -- python = { "ruff_format", "ruff_organize_imports" },
        },
        -- format_on_save = {
        --     timeout_ms = 500,
        --     lsp_fallback = true, -- for using lsp formatters such as gopls
        -- },
        format_after_save = function(bufnr)
            -- use format_after_save (async) for compatibilty with smear-cursor
            -- (see http://github.com/sphamba/smear-cursor.nvim/issues/78)
            if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
                return
            end
            return { timeout_ms = 1000, lsp_fallback = true, async = true }
        end,
    },
}
