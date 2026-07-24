return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local ts = require("nvim-treesitter")
        local parsers = {
            "vim",
            "markdown",
            "bash",
            "lua",
            "html",
            "css",
            "javascript",
            "jsx",
            "typescript",
            "tsx",
            "svelte",
            "go",
            "php",
            "phpdoc",
        }
        for _, parser in ipairs(parsers) do
            ts.install(parser)
        end

        -- Try to match filetype with parser
        local patterns = {}
        for _, parser in ipairs(parsers) do
            local parser_patterns = vim.treesitter.language.get_filetypes(parser)
            for _, pp in pairs(parser_patterns) do
                table.insert(patterns, pp)
            end
        end

        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
        vim.wo[0][0].foldmethod = "expr"

        vim.api.nvim_create_autocmd("FileType", {
            pattern = patterns,
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
