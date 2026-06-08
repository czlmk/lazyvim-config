return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      vim.filetype.add({
        extension = {
          csproj = "xml",
          esproj = "xml",
          keymap = "c",
          mdx = "markdown",
          uproject = "json",
          wsdl = "xml",
        },
      })

      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "query",
          "bash",
          "python",
          "c",
          "cpp",
          "json",
          "yaml",
          "xml",
          "markdown",
          "markdown_inline",
          "sql",
          "godot_resource",
          "javascript",
          "tsx",
          "rust",
          "swift",
          "html",
          "http",
          "gitcommit",
          "gdscript",
          "gdshader",
          "diff",
          "csv",
          "bash",
          "dockerfile",
        },
        highlight = {
          enable = true,
          -- disable = function(lang)
          --   return lang == "python"
          -- end,
        },
        indent = {
          enable = true,
          -- disable = { "python" },
        },
      })
    end,
  },
}
