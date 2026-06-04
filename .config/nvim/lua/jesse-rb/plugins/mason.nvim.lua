return {
    "mason-org/mason.nvim",
    opts = {
        registries = {
            "github:mason-org/mason-registry",   -- default
            "github:Crashdummyy/mason-registry", -- needed for roslyn (C# lsp)
        },
    },
}
