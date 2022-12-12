require('rose-pine').setup({
    --- @usage 'main' | 'moon'
    dark_variant = 'moon',
    disable_background = false,
    disable_italics = true,
})

vim.cmd.colorscheme("rose-pine")

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
