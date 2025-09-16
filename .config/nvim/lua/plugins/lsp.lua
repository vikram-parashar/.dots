return {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'L3MON4D3/LuaSnip'},
    },
    config=function()
      local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.on_attach(function(client, bufnr)
  -- keymaps for LSP
  local opts = {buffer = bufnr, remap = false}
  local keymap = vim.keymap.set

  keymap("n", "gd", vim.lsp.buf.definition, opts)
  keymap("n", "K", vim.lsp.buf.hover, opts)
  keymap("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
  keymap("n", "<F1>", vim.diagnostic.open_float, opts)
  keymap("n", "]d", vim.diagnostic.goto_next, opts)
  keymap("n", "[d", vim.diagnostic.goto_prev, opts)
  keymap("n", "<F3>", vim.lsp.buf.code_action, opts)
  keymap("n", "<F5>", vim.lsp.buf.references, opts)
  keymap("n", "<F2>", vim.lsp.buf.rename, opts)
  keymap("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

lsp.setup()

-- Mason 
require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'lua_ls', 'pyright', 'gopls'},
    handlers = {
      lsp.default_setup,
    },
})

-- CMP
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-n>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
end,
}

