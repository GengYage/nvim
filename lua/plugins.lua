vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
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
  -- Lsp ui
  use "tami5/lspsaga.nvim"

  use "windwp/nvim-autopairs"

  -- auto save
  use "Pocco81/AutoSave.nvim"

  -- status line
  use {
      "windwp/windline.nvim",
      config = function()
          require("configs.windline")
      end,
  }
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
      tag = "v1.2.0",
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

  -- termial integration
  use {
      "akinsho/nvim-toggleterm.lua",
      config = function()
          require("configs.term")
      end,
  }

  -- treesitter config
  use {
      "nvim-treesitter/nvim-treesitter",
      requires = {
        "p00f/nvim-ts-rainbow"
      },
      config = function()
          require("configs.treesitter")
      end,
  }

  use {
    "sbdchd/neoformat",
    config = function()
        require("configs.neoformat")
    end
  }

  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
