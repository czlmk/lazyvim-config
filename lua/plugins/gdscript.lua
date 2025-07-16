if vim.fn.has("macunix") == 0 then
    return {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gdscript = {
                    cmd = { "godot-wsl-lsp", "--useMirroredNetworking" },
                },
            },
        },
    }
else
    return {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                gdscript = {
                    name = "godot",
                    cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
                },
            },
        },
    }
end
