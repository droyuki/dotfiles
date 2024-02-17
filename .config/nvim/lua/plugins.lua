local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[filetype plugin on]]
vim.cmd [[packadd packer.nvim]]


packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- package management
  use 'nvim-lua/plenary.nvim' -- common utilities
  use "EdenEast/nightfox.nvim" -- color scheme

  -- color highlight
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
  }

  -- LSP 
  use 'neovim/nvim-lspconfig' 
  use {
   "glepnir/lspsaga.nvim",
   branch = "main",
  }


  use 'folke/which-key.nvim' -- show keymap hint
  use 'lukas-reineke/indent-blankline.nvim' -- show indent space
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- auto completion
  use 'L3MON4D3/LuaSnip' -- snippet engine
  use 'jose-elias-alvarez/null-ls.nvim' -- code action/hover
  use 'MunifTanjim/prettier.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- fuzzy find and sidebar
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }

  -- hop is a EasyMotion like plugin
  use {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
  }

  -- auto comment
  use 'preservim/nerdcommenter'
  
  -- status bar
  use { 
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- tab bar
  use {
    'romgrk/barbar.nvim',
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

end)
