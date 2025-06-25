return {
  { "catppuccin/nvim", name = "catppuccin", lazy = false,
    opts = {
    term_colors = true,
    }
  },
  { "folke/tokyonight.nvim", lazy = false },
  -- Configure LazyVim to load colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-macchiato",
    },
  },
}
