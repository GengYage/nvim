vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- set theme 
  use "projekt0n/github-nvim-theme"

  -- set lsp
  use 'neovim/nvim-lspconfig'
  -- Autocompletion plugin
  use 'hrsh7th/nvim-cmp' 
  -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-nvim-lsp'
  -- Snippets source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip'
  -- Snippets plugin
  use 'L3MON4D3/LuaSnip' 

  -- auto comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- vim tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
  }

  -- using packer.nvim
  use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons'
  }

  -- circles
  use {
    "projekt0n/circles.nvim",
    requires = {{"kyazdani42/nvim-web-devicons"}, {"kyazdani42/nvim-tree.lua", opt = true}}
  }

  -- git
  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }

end)
