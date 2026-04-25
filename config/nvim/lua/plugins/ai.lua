return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	build = ":Copilot auth",
	event = "InsertEnter", -- Load when entering insert mode
	config = function()
		require("copilot").setup({
			suggestion = {
				enabled = true, -- This enables the Ghost Text
			},
			panel = {
				enabled = false, -- Keep the side panel disabled
			},
			filetypes = {
				yaml = false,
				help = false,
				gitcommit = false,
				gitrebase = false,
				["."] = false,
			},
		})
	end,
}
