return {
  "stevearc/conform.nvim",
  opts = {},
  config=function()
    require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    go = { "gofmt" },
    -- add more here
  },
  format_on_save = {
    lsp_fallback = true, -- use LSP formatting if no formatter is found
    async = false,
    timeout_ms = 1000,
  },
})
end,
}

