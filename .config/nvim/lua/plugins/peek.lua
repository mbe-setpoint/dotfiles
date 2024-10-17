-- Plugin for previewing markdown files in a browser window
return {
	"toppair/peek.nvim",
	build = "deno task --quiet build:fast",
	opts = { theme = "dark", app = "browser" },
}
