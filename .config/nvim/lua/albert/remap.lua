function bind(op, outer_opts)
    outer_opts = outer_opts or { noremap = true }
    return function(lhs, rhs, opts)
        opts = vim.tbl_extend("force",
            outer_opts,
            opts or {}
        )
        vim.keymap.set(op, lhs, rhs, opts)
    end
end

nnoremap = bind("n")

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("<Leader>t", ":NvimTreeToggle<CR>")

nnoremap("<Leader><CR>", ":so ~/.config/nvim/init.lua<CR>")

nnoremap("<Leader>sf", ":Neoformat<CR>")

--nnoremap("<Leader>sp", ":silent %!prettier --stdin-filepath %<CR>")


nnoremap("<Leader>p", function()
    require('telescope.builtin').find_files()
end)
nnoremap("<Leader>o", function()
    require('telescope.builtin').oldfiles()
end)
nnoremap("<Leader>h", function()
    require('telescope.builtin').git_bcommits()
end)

nnoremap("<Leader>j", function()
    require('telescope.builtin').treesitter()
end)
nnoremap("<Leader>f", function()
    require('telescope.builtin').live_grep()
end)
nnoremap("<Leader>F", function()
    require('telescope.builtin').current_buffer_fuzzy_find()
end)

nnoremap("<Leader>s", function()
    vim.lsp.buf.format()
end)

nnoremap("<Leader>g", function()
    require('neogit').open({})
end)
