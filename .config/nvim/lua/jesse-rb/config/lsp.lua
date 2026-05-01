-- LSP configs
-- see list of available lsp configs:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

vim.lsp.config["*"] = {
    capabilities = require("blink.cmp").get_lsp_capabilities(),
}

-- lua
vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in Neovim)
                version = "LuaJIT",
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global variable
                globals = { "vim" },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files for documentation/types
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
})

-- golang
vim.lsp.config("gopls", {})

--typescript
vim.lsp.config("ts_ls", {})

-- svelte
vim.lsp.config("svelte", {})

-- tailwind
vim.lsp.config("tailwindcss", {})

-- terraform
vim.lsp.config("terraformls", {})

-- html
vim.lsp.config("html", {})

-- css
vim.lsp.config("cssls", {})

-- eslint
vim.lsp.config("eslint", {})

-- jsonls
vim.lsp.config("jsonls", {})

--emmet
vim.lsp.config("emmet_language_server", {})

-- basedpyright (python lsp)
vim.lsp.config("basedpyright", {
    settings = {
        basedpyright = {
            disableOrganizeImports = true, -- We will let ruff handle linting/formatting, and organise imports
        },
    },
})

-- ruff (python formatting and linting)
vim.lsp.config("ruff", {})

-- Enable LSPs
vim.lsp.enable({
    "html",
    "cssls",
    "gopls",
    "lua_ls",
    "svelte",
    "ts_ls",
    "tailwindcss",
    "terraformls",
    "eslint",
    "jsonls",
    "emmet_language_server",
    "basedpyright",
    "ruff",
})
