return {
    {
        "kawre/leetcode.nvim",
        event = "VeryLazy",
        build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
        dependencies = {
            -- include a picker of your choice, see picker section for more details
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "ibhagwan/fzf-lua",
        },
        opts = {
            -- configuration goes here
            ---@type lc.lang
            -- lang = "c",
            -- lang = "cpp",
            lang = "python3",
            ---@type lc.picker
            picker = { provider = "fzf-lua" },
        },
    },
}
