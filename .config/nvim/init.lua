require("config.lazy")
require("config.remap")
require("config.set")

vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
	callback = function()
		if vim.bo.modified and vim.bo.buftype == "" then
			require("conform").format({ async = false, lsp_fallback = true })
			vim.cmd("silent! write")
		end
	end,
})
