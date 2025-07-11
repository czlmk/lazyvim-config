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
