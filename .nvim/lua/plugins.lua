local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' },
  }
  use 'nvim-lualine/lualine.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip'

  -- for lsp
  use 'neovim/nvim-lspconfig'
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/vim-vsnip"
  -- use "hrsh7th/cmp-path"
  use "hrsh7th/cmp-buffer"
  use 'onsails/lspkind-nvim'
  -- use "hrsh7th/cmp-cmdline"
  use {
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
  }
end)