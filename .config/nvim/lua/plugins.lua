local status, packer = pcall(require, 'packer')
if (not status) then
  print('packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  -- packer: nvum lua package manager
  use 'wbthomason/packer.nvim'

  -- LSP Configuration & Plugins
  use {
    'neovim/nvim-lspconfig',
    requires = {
      -- automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- useful status updates for LSP
      'j-hui/fidget.nvim',

      -- additional lua configuration, makes nvim stuff amazing
      'folke/neodev.nvim',
    }
  }

  -- autocompletion
  use {
    'hrsh7th/nvim-cmp',
    requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' }
  }

  -- highlight, edit, and navigate code
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end
  }

  -- treesitter additional text objects 
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter'
  }

  -- autopair: auto pair that supports multiple characters
  use {
  	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- comment selections
  use 'numToStr/Comment.nvim'

  -- fuzzy finder (files, lsp, etc)
  use { 'nvim-telescope/telescope.nvim', branch = '0.1.x', requires = { 'nvim-lua/plenary.nvim' } }

  -- fuzzy finder algorithm which requires local dependencies to be built. Only load if `make` is available
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make', cond = vim.fn.executable 'make' == 1 }

  -- nvim tree: sidebar tree that looks like vscode
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- toggleterm: terminal popup
  use {"akinsho/toggleterm.nvim", tag = '*'}


  -- lualine: repo status line on bottom of screen
  use {
   'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- material: theme
  use 'marko-cerovac/material.nvim'

  -- bufferline: make buffers looks nice vscody
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

end)
