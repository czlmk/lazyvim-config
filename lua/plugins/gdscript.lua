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
    return {}
end
