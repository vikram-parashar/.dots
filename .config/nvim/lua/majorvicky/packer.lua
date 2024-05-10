-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use 'rose-pine/neovim'
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  })
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end, }
  use("nvim-treesitter/nvim-treesitter-context");
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'voldikss/vim-floaterm'
  use 'lewis6991/gitsigns.nvim' -- OPTIONAL: for git status
  use 'romgrk/barbar.nvim'
  use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }
  use { 'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use { 'VonHeikemen/fine-cmdline.nvim', requires = { { 'MunifTanjim/nui.nvim' } } }
  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use "lukas-reineke/indent-blankline.nvim"
  use "ggandor/leap.nvim"
  require('leap').add_default_mappings()
  use {
    'laytan/tailwind-sorter.nvim',
    requires = {'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim'},
    config = function() require('tailwind-sorter').setup() end,
    run = 'cd formatter && npm ci && npm run build',
  }
end)
