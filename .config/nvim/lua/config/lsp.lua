-- LSP configs

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
        }
    }
})

-- golang
vim.lsp.config('go_ls', {
    cmd = { "gopls" },
    filetypes = { "go" },
})

vim.lsp.enable({ 'go_ls', 'lua_ls'})

vim.keymap.set('n', '<leader>k', '<cmd>lua vim.diagnostic.open_float()<CR>')
