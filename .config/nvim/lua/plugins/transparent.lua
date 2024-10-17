-- Adds transparency to neovim
return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({})
	end,
}
