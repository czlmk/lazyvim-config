return {
  { "catppuccin/nvim", name = "catppuccin", lazy = false,
    opts = {
    term_colors = true,
    highlight_overrides = {
        all = function()
          return {
            ["@string.escape.json"] = { fg = "#cba6f7", style = { "italic" } },
          }
        end,
      }
    }
  },
  { "folke/tokyonight.nvim", lazy = false },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
