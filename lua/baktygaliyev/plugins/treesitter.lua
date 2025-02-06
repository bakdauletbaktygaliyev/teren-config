return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            -- A list of parser names, or "all" (the listed parsers MUST always be installed)
            ensure_installed = {
                "bash", "c", "cpp", "css", "html", "javascript", "json", "lua", "python", "rust",
                "typescript", "yaml", "go", "java", "markdown", "markdown_inline", "xml", "scss",
                "vue", "angular", "tsx", "tsx", "java", "vimdoc", "jsdoc", "gomod", "graphql", "cmake", "llvm",
                "dockerfile", "sql", "svelte", "make", "toml", "tsx"
            },
            -- Install parsers synchronously (only applied to `ensure_installed`)
            sync_install = false,
            -- Automatically install missing parsers when entering buffer
            -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
            auto_install = true,
            highlight = {
                enable = true, -- false will disable the whole extension
                additional_vim_regex_highlighting = false,
            },
        })
    end
}
