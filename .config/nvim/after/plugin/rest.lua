require("nvim-tree").setup({
    view = {
        adaptive_size = true,
    },
    renderer = {
        group_empty = true,
    },
})



local actions = require("diffview.actions")
-- require("diffview").setup {}

local neogit = require('neogit')
neogit.setup {
    integrations = {
        diffview = true
    },
    sections = {
        stashes = {
            folded = true
        }
    }
}


