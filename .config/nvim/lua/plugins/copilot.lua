-- Support for Copilot
return {
	"zbirenbaum/copilot.lua",
	cmd = "Copilot",
	event = "InsertEnter",
	dependencies = {
		"zbirenbaum/copilot-cmp",
	},
	disable = true,
	config = function()
		require("copilot").setup({
			suggestion = { enabled = false }, -- Use cmp instead
			panel = { enabled = false },
			filetypes = {
				markdown = true,
				help = false,
				gitcommit = false,
				gitrebase = false,
				hgcommit = false,
				svn = false,
				cvs = false,
				["."] = false,
			},
			copilot_node_command = "node",
		})
		require("copilot_cmp").setup()
	end,
}
