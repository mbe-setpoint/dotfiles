-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", opts) -- Move lines down
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", opts) -- Move lines up
vim.keymap.set({ "n", "o", "x" }, "<s-h>", "^", opts) -- Shift+h to go to start of line
vim.keymap.set({ "n", "o", "x" }, "<s-l>", "g_", opts) -- Shift+l to go to end of line
vim.keymap.set("n", "<space>h", ":split<CR>", { desc = "H-split" }) -- split window horizontaly
vim.keymap.set("n", "<space>v", ":vsplit<CR>", { desc = "V-split" }) -- split window vertically
vim.keymap.set("n", "<leader>xf", vim.diagnostic.open_float, { desc = "Open Float", silent = true })
