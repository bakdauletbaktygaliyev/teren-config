function ColorMyPencils(color)
    color = color or "catppuccin"
    vim.cmd.hi("Comment gui = none")
    vim.cmd.colorscheme(color)

    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",     -- latte, frappe, macchiato, mocha
                dim_inactive = {
                    enabled = true,    -- dims the background color of inactive window
                    shade = "dark",
                    percentage = 0.15, -- percentage of the shade to apply to the inactive window
                },
                styles = {
                    comments = { "italic" },
                    conditionals = {},
                },
                integrations = {
                    cmp = true,
                    gitsigns = true,
                    nvimtree = true,
                    treesitter = true,
                },
            })

            ColorMyPencils("catppuccin")
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
    },
    {
        "scottmckendry/cyberdream.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "dasupradyumna/midnight.nvim",

        lazy = false,
        priority = 1000,
    },
    {
        "cdmill/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({
                style = "roseprime",
            })
        end,
    },
    {
        "2nthony/vitesse.nvim",
        lazy = false,
        priority = 1000,
        dependencies = {
            "tjdevries/colorbuddy.nvim",
        },
        config = function()
            require("vitesse").setup({
                comment_italics = true,
                transparent_background = false,
                transparent_float_background = false, -- aka pum(popup menu) background
                reverse_visual = false,
                dim_nc = false,
                cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
                -- if `transparent_float_background` false, make telescope border color same as float background
                telescope_border_follow_float_background = false,
                -- similar to above, but for lspsaga
                lspsaga_border_follow_float_background = false,
                -- diagnostic virtual text background, like error lens
                diagnostic_virtual_text_background = false,
            })
        end,
    },
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = false, -- don't set background
                style = {
                    comments = "italic",
                    -- headings = "bold", -- markdown headings
                    strings = "italic",
                },
            })
        end,
    },
    {
        "gmr458/vscode_modern_theme.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vscode_modern").setup({})
        end,
    },
    {
        "loctvl842/monokai-pro.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("monokai-pro").setup({
                devicons = true, -- highlight the icons of `nvim-web-devicons`
                styles = {
                    comment = { italic = true },
                    keyword = { italic = false },       -- any other keyword
                    type = { italic = false },          -- (preferred) int, long, char, etc
                    storageclass = { italic = false },  -- static, register, volatile, etc
                    structure = { italic = false },     -- struct, union, enum, etc
                    parameter = { italic = false },     -- parameter pass in function
                    annotation = { italic = true },
                    tag_attribute = { italic = false }, -- attribute of tag in reactjs
                },
                filter = "spectrum",                    -- classic | octagon | pro | machine | ristretto | spectrum
            })
        end,
    },
    {
        "Yazeed1s/oh-lucy.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },


}
