-- Breadcrumbs is a plugin that works with nvim-navic to provide context about your code in the winbar.
return {
	"LunarVim/breadcrumbs.nvim",
	dependencies = {
		{ "SmiteshP/nvim-navic" },
	},
	config = function()
		require("breadcrumbs").setup()
	end,
}
