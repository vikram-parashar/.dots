return {
	"mfussenegger/nvim-lint",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local lint = require("lint")

		lint.linters_by_ft = {
			typescript = { "eslint" },
			typescriptreact = { "eslint" },
			javascript = { "eslint" },
			javascriptreact = { "eslint" },
		}

		-- Use local project eslint first
		lint.linters.eslint.args = {
			"--no-warn-ignored",
			"--format",
			"json",
			"--stdin",
			"--stdin-filename",
			function()
				return vim.api.nvim_buf_get_name(0)
			end,
		}

		vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
			callback = function()
				lint.try_lint()
			end,
		})

		-- Keymap to trigger lint manually
		vim.keymap.set("n", "<leader>ll", function()
			lint.try_lint()
		end, { desc = "Lint current file" })
	end,
}
