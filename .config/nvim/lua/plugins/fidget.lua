-- Fidget is an unintrusive window in the corner of your editor that displays keybinds, lsp progress, etc
return {
	"j-hui/fidget.nvim",
	opts = {},
	config = function()
		require("fidget").setup({})
	end,
}
