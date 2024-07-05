vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -- Essential dependencies
  use 'nvim-lua/plenary.nvim'

  -- Aesthetics
  use 'rose-pine/neovim'
  use {'nvim-tree/nvim-web-devicons'}

  -- File Explorer
  use { 'nvim-tree/nvim-tree.lua', requires = { 'nvim-tree/nvim-web-devicons' } }
  use 'romgrk/barbar.nvim'

  -- Telescope
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.4' }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use("nvim-treesitter/nvim-treesitter-context")

  -- LSP and Autocompletion
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use("github/copilot.vim")

  -- Comments
  use { 'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'

  -- Terminal integration
  use 'voldikss/vim-floaterm'

  -- Git integration
  use 'lewis6991/gitsigns.nvim'

  -- Utility
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
      }
    end
  })
  use "ggandor/leap.nvim"
  require('leap').add_default_mappings()

  -- Formatting
  use {
    'laytan/tailwind-sorter.nvim',
    requires = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
    config = function() require('tailwind-sorter').setup() end,
    run = 'cd formatter && npm ci && npm run build',
  }

  -- Competitive Programming
  use {
    'xeluxee/competitest.nvim',
    requires = 'MunifTanjim/nui.nvim',
    config = function() require('competitest').setup() end
  }
end)

