local opts = { noremap = true, silent = true }

-- End of line navigation
-- vim.keymap.set("i", "<C-b>", "<ESC>^i", { desc = "Begining of line" })
-- vim.keymap.set("i", "<C-e>", "<End>", { desc = "End of line" })
vim.keymap.set({ "n", "o", "x" }, "<s-h>", "^", opts) -- Shift+h to go to start of line
vim.keymap.set({ "n", "o", "x" }, "<s-l>", "g_", opts) -- Shift+l to go to end of line

-- Prevent space tp move cursor in noraml mode
vim.keymap.set("n", "<Space>", "", opts)

-- Why?
-- vim.keymap.set("n", "<C-i>", "<C-i>", opts)

-- Join lines
vim.keymap.set("n", "gJ", "<cmd>join<cr>", opts)

-- Center screen
vim.keymap.set("n", "n", "nzz", opts)
vim.keymap.set("n", "N", "Nzz", opts)
vim.keymap.set("n", "*", "*zz", opts)
vim.keymap.set("n", "#", "#zz", opts)
vim.keymap.set("n", "g*", "g*zz", opts)
vim.keymap.set("n", "g#", "g#zz", opts)

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Increment / decrement numbers
vim.keymap.set("n", "+", "<C-a>")
vim.keymap.set("n", "-", "<C-x>")

-- Select all text in the buffer
vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Yanking
-- x means that
vim.keymap.set("x", "p", [["_dP]]) -- Keep last yank in default register after paste
vim.keymap.set("x", "y", "ygv<Esc>") -- Move cursor to last line of the yanked text instead of to the beginning
vim.keymap.set("x", "Y", "y$") -- Yank to end of line

-- Move lines up and down
vim.api.nvim_set_keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.api.nvim_set_keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Saving
vim.keymap.set("n", "<c-s>", "<cmd>wa<cr>", opts)
vim.keymap.set("i", "<c-s>", "<cmd>wa<cr><esc>", opts)

-- Clear search highlighta
vim.keymap.set(
	"n",
	"<leader><cr>",
	"<cmd>nohlsearch<cr>",
	{ noremap = true, silent = true, desc = "Clear search highlights" }
)

-- call vscode commands from neovim
local keymap = vim.keymap.set
-- general keymaps
keymap({ "n", "v" }, "<leader>t", "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>")
keymap({ "n", "v" }, "<leader>b", "<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>")
keymap({ "n", "v" }, "<leader>d", "<cmd>lua require('vscode').action('editor.action.showHover')<CR>")
keymap({ "n", "v" }, "<leader>a", "<cmd>lua require('vscode').action('editor.action.quickFix')<CR>")
keymap({ "n", "v" }, "<leader>sp", "<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>")
keymap({ "n", "v" }, "<leader>cn", "<cmd>lua require('vscode').action('notifications.clearAll')<CR>")
keymap({ "n", "v" }, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({ "n", "v" }, "<leader>cp", "<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>")
keymap({ "n", "v" }, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>")
keymap({ "n", "v" }, "<leader>lf", "<cmd>lua require('vscode').action('editor.action.formatDocument')<CR>")
keymap({ "n", "v" }, "<leader>n", "<cmd>lua require('vscode').action('workbench.action.toggleSidebarVisibility')<CR>")
keymap({ "n", "v" }, "<leader>nn", "<cmd>lua require('vscode').action('workbench.explorer.fileView.focus')<CR>")
-- keymap({ "n", "v" }, "<leader>f", "<cmd>lua require('vscode').action('workbench.action.findInFiles')<CR>")
keymap({ "n", "v" }, "<leader>h", "<cmd>lua require('vscode').action('workbench.action.splitEditorDown')<CR>")
keymap({ "n", "v" }, "<leader>v", "<cmd>lua require('vscode').action('workbench.action.splitEditorRight')<CR>")
keymap({ "n", "v" }, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")
keymap({ "n", "v" }, "<leader>z", "<cmd>lua require('vscode').action('workbench.action.toggleZenMode')<CR>")
-- harpoon keymaps
keymap({ "n", "v" }, "<leader>ha", "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>")
keymap({ "n", "v" }, "<leader><tab>", "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>")
keymap({ "n", "v" }, "<leader>he", "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>")
keymap({ "n", "v" }, "<leader>1", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>")
keymap({ "n", "v" }, "<leader>2", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>")
keymap({ "n", "v" }, "<leader>3", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>")
keymap({ "n", "v" }, "<leader>4", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>")
keymap({ "n", "v" }, "<leader>5", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>")
keymap({ "n", "v" }, "<leader>6", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>")
keymap({ "n", "v" }, "<leader>7", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>")
keymap({ "n", "v" }, "<leader>8", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>")
keymap({ "n", "v" }, "<leader>9", "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>")

-- project manager keymaps
keymap({ "n", "v" }, "<leader>pa", "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>")
keymap({ "n", "v" }, "<leader>po", "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>")
keymap({ "n", "v" }, "<leader>pe", "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>")
