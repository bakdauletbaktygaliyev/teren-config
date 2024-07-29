function ColorMyPencils(color)
    color = color or "rose-pine"
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
                flavour = "mocha",    -- latte, frappe, macchiato, mocha
                dim_inactive = {
                    enabled = true,   -- dims the background color of inactive window
                    shade = "light",
                    percentage = 0.2, -- percentage of the shade to apply to the inactive window
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

            ColorMyPencils()
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                variant = "main",      -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = true,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true,        -- Handle deprecated options automatically
                },

                styles = {
                    bold = true,
                    italic = false,
                    transparency = false,
                },

                groups = {
                    border = "muted",
                    link = "iris",
                    panel = "surface",

                    error = "love",
                    hint = "iris",
                    info = "foam",
                    note = "pine",
                    todo = "rose",
                    warn = "gold",

                    git_add = "foam",
                    git_change = "rose",
                    git_delete = "love",
                    git_dirty = "rose",
                    git_ignore = "muted",
                    git_merge = "iris",
                    git_rename = "pine",
                    git_stage = "iris",
                    git_text = "rose",
                    git_untracked = "subtle",

                    h1 = "iris",
                    h2 = "foam",
                    h3 = "rose",
                    h4 = "gold",
                    h5 = "pine",
                    h6 = "foam",
                },

                highlight_groups = {
                    -- Comment = { fg = "foam" },
                    -- VertSplit = { fg = "muted", bg = "muted" },
                },

                before_highlight = function(group, highlight, palette)
                    -- Disable all undercurls
                    -- if highlight.undercurl then
                    --     highlight.undercurl = false
                    -- end
                    --
                    -- Change palette colour
                    -- if highlight.fg == palette.pine then
                    --     highlight.fg = palette.foam
                    -- end
                end,
            })
        end

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
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                transparent = false, -- don't set background
                style = {
                    comments = "italic",
                    headings = "bold", -- markdown headings
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
