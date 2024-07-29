return {
    {
        "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    },
    {
        "MeanderingProgrammer/markdown.nvim",
        name = "render-markdown",
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("render-markdown").setup({})
        end,
    },
    {
        "NvChad/nvim-colorizer.lua"
    },
    {
        "theprimeagen/vim-be-good",

        dependencies = {
            "nvim-lua/plenary.nvim"
        },

    },
    {
        "rcarriga/nvim-notify",
        config = function()
            local notify = require("notify")
            vim.notify = notify
            notify.setup({
                render = "compact",
                stages = "static",
                timeout = 3000,
            })
        end,
        lazy = false,
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        event = { "BufReadPost", "BufNewFile" },
    },
    {
        "numToStr/Comment.nvim",
        opts = {
            opts = {
                ignore = "^$",
            },
        },
        event = { "BufReadPost", "BufNewFile" },
    },
    {
        "Love-Pengy/minintro.nvim",
        opts = { color = "#63bda4" },
        config = true,
        lazy = false,
        enabled = true,
    },

}
