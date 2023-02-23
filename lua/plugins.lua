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
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'L3MON4D3/LuaSnip'
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'lewis6991/gitsigns.nvim' -- Git marker
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'
  use 'psf/black'
end)
