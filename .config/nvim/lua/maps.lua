local keymap = vim.keymap

local r = function(x, s)
	local t = {s}
	for i = 0, x, 1 do
		t[i] = s
	end
	local o = table.concat(t, '|')
	return o
end

-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- do not yank with x
keymap.set('n', 'x', '"_x')

-- increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- buffers
keymap.set('n', '<leader>]', ':bnext<CR>', { silent = true })
keymap.set('n', '<leader>[', ':bprevious<CR>', { silent = true })
keymap.set('n', '<leader>w', ':bd!<CR>', { silent = true })

-- split window
keymap.set('n', '<leader>ss', ':split<Return><C-w>w', { silent = true })
keymap.set('n', '<leader>sv', ':vsplit<Return><C-w>w', { silent = true })
-- move window
keymap.set('', '<leader>sh', '<C-w>h')
keymap.set('', '<leader>sk', '<C-w>k')
keymap.set('', '<leader>sj', '<C-w>j')
keymap.set('', '<leader>sl', '<C-w>l')
-- resize window
keymap.set('n', '<leader>s,', r(10, '<C-w><'))
keymap.set('n', '<leader>s.', r(10, '<C-w>>'))
keymap.set('n', '<leader>s-', r(10, '<C-w>-'))
keymap.set('n', '<leader>s=', r(10, '<C-w>+'))
keymap.set('n', '<leader>s,,', r(30, '<C-w><'))
keymap.set('n', '<leader>s..', r(30, '<C-w>>'))
keymap.set('n', '<leader>s--', r(30, '<C-w>-'))
keymap.set('n', '<leader>s==', r(30, '<C-w>+'))
keymap.set('n', '<leader>s,,,', r(100, '<C-w><'))
keymap.set('n', '<leader>s...', r(100, '<C-w>>'))
keymap.set('n', '<leader>s---', r(100, '<C-w>-'))
keymap.set('n', '<leader>s===', r(100, '<C-w>+'))

-- terminal in vertical mode
keymap.set('n', '<leader>t', ':split<Return><C-w>w|:terminal<Return>', { silent = true })
keymap.set('n', '<leader>tv', ':vsplit<Return><C-w>w|:terminal<Return>', { silent = true })

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>gf', telescope.git_files, {})
vim.keymap.set('n', '<leader>gc', telescope.git_commits, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>fr', telescope.lsp_references, {})
vim.keymap.set('n', '<leader>fd', telescope.lsp_definitions, {})

-- nvim-tree
local nvim_tree = require('nvim-tree.api')
vim.keymap.set('n', '<leader>e', nvim_tree.tree.toggle, {})

-- nvim-dap
local dap = require('dap')
vim.keymap.set('n', '<leader>db', dap.toggle_breakpoint, {})
vim.keymap.set('n', '<leader>dc', dap.continue, {})
vim.keymap.set('n', '<leader>d>', dap.step_over, {})
vim.keymap.set('n', '<leader>d.', dap.step_into, {})
vim.keymap.set('n', '<leader>d<', dap.step_out, {})

-- dapui
local dapui = require('dapui')
vim.keymap.set('n', '<leader>dui', dapui.toggle, {})

-- diagnostics
vim.keymap.set('n', '<leader>dg', vim.diagnostic.open_float, {})

-- In terminal mode, go to normal mode
keymap.set('t', '<esc>', '<C-\\><C-n>')
