-- Adds smooth scrolling to neovim
return {
	"karb94/neoscroll.nvim",
	config = function()
		require("neoscroll").setup({})
	end,
}
