return {
  { "echasnovski/mini.pairs", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
      completion = {
        trigger = {
          show_in_snippet = false,
        },
        menu = {
          draw = {
            columns = { { "label", "label_description", gap = 1 }, { "kind_icon", "kind", "source_name" } },
          },
        },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer", "codeium" },

        providers = {
          codeium = {
            name = "codeium",
            module = "blink.compat.source",
            score_offset = 3,
          },
        },
      },
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, 2, LazyVim.lualine.cmp_source("codeium"))
    end,
  },
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "olrtg/nvim-emmet",
    config = function()
      vim.keymap.set({ "n", "v" }, "gse", require("nvim-emmet").wrap_with_abbreviation, { desc = "Wrap with Emmet" })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      servers = {
        emmet_language_server = {
          filetypes = {
            "css",
            "html",
            "javascript",
            "elixir",
            "eelixir",
            "heex",
          },
        },
      },
    },
  },
}
