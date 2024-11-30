return {
    'nvim-tree/nvim-tree.lua',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        -- recommended settings
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        -- empty setup using defaults
        require("nvim-tree").setup()
    
        -- keymaps
        local keymap = vim.keymap

        keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<Enter>', {
            desc = 'open nvim-tree file explorer'
        })
    end,
}
