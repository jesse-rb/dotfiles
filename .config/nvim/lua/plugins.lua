local status, packer = pcall(require, 'packer')
if (not status) then
  print('packer is not installed')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- packer: nvum lua package manager
  use 'marko-cerovac/material.nvim' -- material: theme
  use { -- lualine: repo status line on bottom of screen
   'nvim-lualine/lualine.nvim',
   requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
