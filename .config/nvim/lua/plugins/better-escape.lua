-- Makes it possible to use jj as escape in insert mode
return {
	"max397574/better-escape.nvim",
	config = function()
		require("better_escape").setup()
	end,
}
