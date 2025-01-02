-- Set custom options
require("options")
require("autocommands")
-- Initialize the Lazy nvim package manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local opt = {
	-- Set the colorscheme to use for lazy nvim gui
	colorscheme = "kanagawa-wave",
}

-- Load all plugins
-- This will always call require(<plugin-name>).setup() automatically
-- But this can be overridden. See examples in the plugins dir.
if vim.g.vscode then
	print("Neovim in vscode")
	local plugins = "plugins-vscode"
	require("lazy").setup(plugins, {})
	require("keymaps-vscode")
else
	print("plain nvim")
	local plugins = "plugins"
	require("lazy").setup(plugins, {})
	-- set custom kaymaps
	require("keymaps-nvim")
end
