require('nvim-treesitter.configs').setup({
    -- A list of parser names, or "all"
    ensure_installed = {
        "yaml",
        "typescript",
        "json",
        "html",
        "javascript",
        "lua",
        "graphql",
        "sql"
    },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    -- Automatically install missing parsers when entering buffer
    auto_install = true,
    highlight = {
        -- `false` will disable the whole extension
        enable = true,

        disable = { "yaml" },
        additional_vim_regex_highlighting = false,
    },
})

require('treesitter-context').setup {
    enable = true,
    throttle = true,
    patterns = {
        default = {
            "function",
            "method",
            "for",
            "while",
            "if",
            "switch",
            "case",
        },

        rust = {
            "loop_expression",
            "impl_item",
        },

        -- typescript = {
        --     "class_declaration",
        --     "abstract_class_declaration",
        --     "else_clause",
        -- },
    }
}
