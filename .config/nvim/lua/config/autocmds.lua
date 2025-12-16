-- Autogroup examples from LazyVim: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua

local function augroup(name)
    return vim.api.nvim_create_augroup("config_" .. name, { clear = true })
end

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
    group = augroup("highlight_yank"),
    callback = function()
        (vim.hl or vim.highlight).on_yank()
    end,
})

-- Format on save
-- Add an autocmd that fires when an LSP client attaches to a buffer
vim.api.nvim_create_autocmd("LspAttach", {
    group = augroup("lsp_format_on_save"),
    callback = function(args)
        -- Attach a second autocmd specifically for this buffer (args.buf)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = args.buf, -- Only runs for the current buffer
            callback = function()
                vim.lsp.buf.format({
                    async = false, -- Ensures formatting completes before saving
                    bufnr = args.buf,
                    -- Optional: Filter to use a specific LSP client if multiple are attached
                    -- filter = function(client) return client.name == "your_lsp_server_name" end
                })
            end,
        })
    end,
})


-- Trigger auto complete suggestions
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local client = vim.lsp.get_client_by_id(args.data.client_id)
        local bufnr = args.buf

        if client and client.server_capabilities.completionProvider then
            vim.lsp.completion.enable(true, client.id, bufnr)
        end
    end,
})
