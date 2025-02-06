return {
    {
        "rktjmp/lush.nvim"
    },
    {
        "andrewferrier/wrapping.nvim",
        config = function()
            require("wrapping").setup()
        end
    },
    {
        "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
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
        event = { "BufReadPost", "BufNewFile" },
    },
}
