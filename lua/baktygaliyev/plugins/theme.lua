function ColorMyPencils(color)
    color = color or "midnight"
    vim.cmd("hi Comment gui=none")
    vim.cmd.colorscheme(color)
    -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "nyoom-engineering/oxocarbon.nvim"
    },
    {
        "kabouzeid/nvim-jellybeans",
        dependencies = { "rktjmp/lush.nvim" }
    },
    {
        "EdenEast/nightfox.nvim"
    },
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
                variant = "moon", -- auto, main, moon, or dawn
                -- dark_variant = "moon", -- main, moon, or dawn
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
                toggle_style_key = nil,
                toggle_style_list = {
                    "iceclimber",
                    "coffeecat",
                    "darkforest",
                    "campfire",
                    "roseprime",
                    "daylight"
                },
                transparent = false,
                term_colors = true,
                code_style = {
                    comments = "italic",
                    conditionals = "none",
                    functions = "none",
                    keywords = "none",
                    headings = "bold", -- markdown headings
                    operators = "none",
                    keyword_return = "none",
                    strings = "none",
                    variables = "none",
                },
                ui = {
                    colored_docstrings = true, -- if true, docstrings will be highlighted like strings, otherwise they will be highlighted like comments
                    plain_float = false,       -- don't set background of floating windows. recommended for when using floating windows with borders
                    show_eob = true,           -- show the end-of-buffer tildes

                    lualine = {
                        bold = true,
                        plain = false, -- use a less distracting lualine. note: works best when no lualine separators are used
                    },
                    cmp = {
                        plain = false,        -- don't highlight lsp-kind items
                        reverse = false,      -- reverse item kind highlights in cmp menu
                    },
                    telescope = "borderless", -- choose between 'borderless' or 'bordered'
                },
            })
        end,
    },
    {
        "vague2k/vague.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("vague").setup({
                require("vague").setup({
                    transparent = false,
                    style = {
                        boolean = "none",
                        number = "none",
                        float = "none",
                        error = "none",
                        comments = "italic",
                        conditionals = "none",
                        functions = "none",
                        headings = "bold",
                        operators = "none",
                        strings = "italic",
                        variables = "none",
                        keywords = "none",
                        keyword_return = "none",
                        keywords_loop = "none",
                        keywords_label = "none",
                        keywords_exception = "none",
                        builtin_constants = "none",
                        builtin_functions = "none",
                        builtin_types = "none",
                        builtin_variables = "none",
                    },
                    colors = {
                    },
                })
            })
        end,
    },
    {
        "loctvl842/monokai-pro.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("monokai-pro").setup({
                devicons = true,
                styles = {
                    comment = { italic = true },
                    keyword = { italic = false },
                    type = { italic = false },
                    storageclass = { italic = false },
                    structure = { italic = false },
                    parameter = { italic = false },
                    annotation = { italic = true },
                    tag_attribute = { italic = false },
                },
                filter = "spectrum", -- classic | octagon | pro | machine | ristretto | spectrum
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
    },
    {
        "sainnhe/gruvbox-material",
        config = function()
            -- vim.g.gruvbox_contrast_dark = '(hard)'
            -- vim.g.gruvbox_contrast_light = 'hard'
        end
    },
    {
        "mellow-theme/mellow.nvim"
    },
    {
        "ayu-theme/ayu-vim"
    }
}
