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

  use "simrat39/rust-tools.nvim"

  use "windwp/nvim-autopairs"

  -- auto save
  use "Pocco81/AutoSave.nvim"

  -- status line
  use {
      "windwp/windline.nvim",
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
  }

  -- termial integration
  use {
      "akinsho/nvim-toggleterm.lua",
  }

  -- treesitter config
  use {
      "nvim-treesitter/nvim-treesitter",
      requires = {
        "p00f/nvim-ts-rainbow"
      },
  }

  use {
    "sbdchd/neoformat",
  }

  -- telescoop
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
  }
  use {
    "nvim-telescope/telescope-fzf-native.nvim",
    run = "make",
  }
  use "nvim-telescope/telescope-ui-select.nvim"
  use "nvim-telescope/telescope-live-grep-raw.nvim"
  use "MattesGroeger/vim-bookmarks"
  use "tom-anders/telescope-vim-bookmarks.nvim"
end)
