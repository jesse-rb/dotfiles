return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        local telescope = require('telescope')
        local builtin = require('telescope.builtin')

        telescope.setup()
        telescope.load_extension('fzf')

        -- keymaps
        local keymap = vim.keymap

        keymap.set('n', '<leader>ff', builtin.find_files, {
            desc = 'find project files'
        })
        keymap.set('n', '<leader>gf', builtin.git_files, {
            desc = 'find git files'
        })
        keymap.set('n', '<leader>gc', builtin.git_commits, {
            desc = 'find commits'
        })
        keymap.set('n', '<leader>fg', builtin.live_grep, {
            desc = 'find grep'
        })
        keymap.set('n', '<leader>fb', builtin.buffers, {
            desc = 'find buffers'
        })
        keymap.set('n', '<leader>fh', builtin.help_tags, {
            desc = 'find help tags'
        })
        keymap.set('n', '<leader>fr', builtin.lsp_references, {
            desc = 'find lsp references'
        })
        keymap.set('n', '<leader>fd', builtin.lsp_definitions, {
            desc = 'find lsp definitions'
        })
    end
}

