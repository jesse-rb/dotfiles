-- LSP configs
-- see list of available lsp configs:
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md

-- lua
vim.lsp.config('lua_ls', {
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
vim.lsp.config('gopls', {})

--typescript
vim.lsp.config('ts_ls', {})

-- svelte
vim.lsp.config('svelte', {})

-- Enable LSPs
vim.lsp.enable({
    'gopls',
    'lua_ls',
    'svelte',
    'ts_ls',
})
