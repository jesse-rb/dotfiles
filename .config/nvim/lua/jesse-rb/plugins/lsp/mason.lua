return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'neovim/nvim-lspconfig',
    },
    config = function()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')

        local servers = {
            gopls = {},
            -- go-debug-adapter
            intelephense = {},
            -- php-debug-adapter
            svelte = {},
            jdtls = {
                root_dir = {
                    -- Single-module projects
                    {
                        'build.xml', -- Ant
                        'pom.xml', -- Maven
                        'settings.gradle', -- Gradle
                        'settings.gradle.kts', -- Gradle
                        '.git'
                    },
                    -- Multi-module projects
                    { 'build.gradle', 'build.gradle.kts' },
                } or vim.fn.getcwd(),
                single_file_support = true
            },
            html = {},
            tsserver = {},
            lua_ls = {
                Lua = {
                    workspace = { checkThirdParty = false },
                    telemetry = { enable = false },
                    globals = { 'vim' }
                },
            },
        }

        mason.setup({

        })

        mason_lspconfig.setup({
            ensure_installed = vim.tbl_keys(servers),
            mason_lspconfig.setup_handlers({
                function(server_name)
                    require('lspconfig')[server_name].setup({
                        capabilities = capabilities,
                        on_attach = on_attach,
                        settings = servers[server_name],
                    })
                end,
            })
        })
    end
}
