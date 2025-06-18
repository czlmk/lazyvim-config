--return {
 --[[ {
    "folke/which-key.nvim",
    opts = {
      defaults = {
        { "<leader>z", group = "Fzf" },
        { "<leader>zg", group = "Grep String" },
        { "<leader>zl", group = "Live Grep" },
      },
    },
  }]
  local wk = require("which-key")
  wk.add({
    { "<leader>z", group = "Fzf"},
    { "<leader>zg", group = "Grep String" },
    { "<leader>zl", group = "Live Grep" },
  })
}]]
return {
  {
    "folke/which-key.nvim",
    config = function()
      local wk = require("which-key")
      wk.add({
        { "<leader>z", group = "Fzf"},
        { "<leader>zg", group = "Grep String" },
        { "<leader>zl", group = "Live Grep" },
      })
    end,
  },
}

