return {
  "neovim/nvim-lspconfig",
  config = function()
    -- local on_attach = function(client, bufnr)
    --   local map = function(keys, func, desc)
    --     if desc then
    --       desc = "LSP - " .. desc
    --     end
    --
    --     vim.keymap.set("n", keys, func, { buffer = bufnr, desc = desc })
    --   end
    --
    --   map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")
    --   map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction")
    --
    --   map("ge", vim.lsp.buf.declaration, "[G]oto d[E]claration")
    --   map("gD", vim.lsp.buf.definition, "[G]oto [D]efinition")
    --   map("gI", vim.lsp.buf.implementation, "[G]oto [I]mplementation")
    --   map("gR", require("telescope.builtin").lsp_references, "[G]oto [R]eferences")
    --   map("gY", vim.lsp.buf.type_definition, "[G]oto t[Y]pe definition")
    --   map("g]", require("telescope.builtin").lsp_document_symbols, "[D]ocument [S]ymbols")
    --   map("g}", require("telescope.builtin").lsp_dynamic_workspace_symbols, "[W]orkspace [S]ymbols")
    --
    --   -- See `:help K` for why this keymap
    --   map("K", vim.lsp.buf.hover, "Hover Documentation")
    --   map("<C-k>", vim.lsp.buf.signature_help, "Signature Documentation")
    -- end

    local capabilities = vim.lsp.protocol.make_client_capabilities()
        require("lspconfig").pyright.setup({
      -- on_attach = on_attach,
      capabilities = capabilities,
      on_new_config = function(new_config, dir)
        if require("util").dir_has_file(dir, "poetry.lock") then
          vim.notify_once("Running `pyright` with `poetry`")
          new_config.cmd = { "poetry", "run", "pyright-langserver", "--stdio" }
        elseif require("util").dir_has_file(dir, "Pipfile") then
          vim.notify_once("Running `pyright` with `pipenv`")
          new_config.cmd = { "pipenv", "run", "pyright-langserver", "--stdio" }
        else
          vim.notify_once("Running `pyright` without a virtualenv")
        end
      end,
    })
  end,
}
