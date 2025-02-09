return {
    {
        "rktjmp/lush.nvim"
    },
    {
        "tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = { "BufReadPost", "BufNewFile" },
    },
}
