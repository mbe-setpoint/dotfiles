-- WhichKey helps you remember your Neovim keymaps, by showing available keybindings in a popup as you type.
---@diagnostic disable: missing-fields
return {
	"folke/which-key.nvim",
    event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },

   -- config = function()
   -- 	local which_key = require("which-key")
   -- 	which_key.setup({
   -- 		plugins = {
   -- 			marks = true,
   -- 			registers = true,
   -- 			spelling = {
   -- 				enabled = true,
   -- 				suggestions = 20,
   -- 			},
   -- 			presets = {
   -- 				operators = true,
   -- 				motions = true,
   -- 				text_objects = true,
   -- 				windows = true,
   -- 				nav = true,
   -- 				z = true,
   -- 				g = true,
   -- 			},
   -- 		},
   -- 		win = {
   -- 			border = "rounded",
   -- 			position = "bottom",
   -- 			padding = { 2, 2, 2, 2 },
   -- 		},
   -- 		show_help = true,
   -- 		show_keys = true,
   -- 		disable = {
   -- 			buftypes = {},
   -- 			filetypes = { "TelescopePrompt" },
   -- 		},
   --         triggers = {
   --             { "<leader>", mode = { "n", "v" } },
   --         },
   -- 	})
   -- end,
}
