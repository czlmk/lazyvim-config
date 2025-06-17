return {
  {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        ["<leader>z"] = {
          name = "Fzf", -- this is the sub-group name for <leader>z
          g = { name = "Grep String" },
          l = { name = "Live Grep" },
        },
      },
    },
  }
}
