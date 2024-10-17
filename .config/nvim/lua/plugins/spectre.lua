-- Adds better search and replace
return {
	"nvim-pack/nvim-spectre",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("spectre").setup({
			default = {
				replace = {
					cmd = "sed",
				},
			},
		})
	end,
}
