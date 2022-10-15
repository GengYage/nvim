local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup({
  function(use)
    use 'wbthomason/packer.nvim'

    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly'
    }

    -- theme
    use 'projekt0n/github-nvim-theme'

    -- lsp
    use {
      'williamboman/nvim-lsp-installer',
      'neovim/nvim-lspconfig',
    }
    use 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
    use 'j-hui/fidget.nvim'

    -- cmp
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'L3MON4D3/LuaSnip'
    use 'simrat39/rust-tools.nvim'

    -- debug
    use {
      "rcarriga/nvim-dap-ui",
      requires = { "mfussenegger/nvim-dap" }
    }

    -- telescope
    use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'make',
    }
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.0',
      requires = { 'nvim-lua/plenary.nvim' }
    }
    use "MattesGroeger/vim-bookmarks"
    use "tom-anders/telescope-vim-bookmarks.nvim"

    -- treesitter
    use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    -- 函数上下文
    use 'nvim-treesitter/nvim-treesitter-context'
    -- 高亮参数
    use 'm-demare/hlargs.nvim'
    -- 彩虹括号
    use 'p00f/nvim-ts-rainbow'


    -- autopairs
    use "windwp/nvim-autopairs"

    -- surround
    use 'kylechui/nvim-surround'

    -- bufferline
    use {
      'akinsho/bufferline.nvim',
      tag = "v2.*",
      requires = 'kyazdani42/nvim-web-devicons'
    }

    -- cursorline
    use 'yamatsum/nvim-cursorline'

    -- comment
    use 'numToStr/Comment.nvim'

    -- number peek
    use 'nacro90/numb.nvim'

    -- fcitx
    use 'h-hg/fcitx.nvim'

    -- 代码折叠
    use {
      'kevinhwang91/nvim-ufo',
      requires = 'kevinhwang91/promise-async'
    }

    -- markdown
    use 'davidgranstrom/nvim-markdown-preview'

    --  which key
    use 'folke/which-key.nvim'

    if packer_bootstrap then
      require('packer').sync()
    end
  end,
  -- packer config
  config = {
    display = {
      working_sym = '',
      error_sym = '',
      done_sym = '√',
      removed_sym = '-',
      moved_sym = '→',
      header_sym = '━',
    }
  },
})
