return {
  {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = {
      {
        "<leader>cS",
        "<cmd>Trouble lsp toggle focus=true win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
    },
  }
}
