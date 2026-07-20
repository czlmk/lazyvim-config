return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
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

      require("nvim-treesitter.config").setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      require("nvim-treesitter").install({
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
        "dockerfile",
      })

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          local lang = vim.treesitter.language.get_lang(args.match)
          if lang then
            pcall(vim.treesitter.start, args.buf, lang)
          end
        end,
      })
    end,
  },
}
