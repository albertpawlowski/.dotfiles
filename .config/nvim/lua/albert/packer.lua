require('packer').startup(function(use)
    use('wbthomason/packer.nvim') -- this is essential.

    use('EdenEast/nightfox.nvim')
    use('folke/tokyonight.nvim')
    use('ayu-theme/ayu-vim')
    use { "catppuccin/nvim", as = "catppuccin" }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })
    use { 'olivercederborg/poimandres.nvim',
        config = function()
            require('poimandres').setup {
                -- leave this setup function empty for default config
                -- or refer to the configuration section
                -- for configuration options
            }
        end
    }

    use('github/copilot.vim')

    use('nvim-lua/plenary.nvim')
    use('nvim-telescope/telescope.nvim')
    use('ThePrimeagen/harpoon')

    use('kyazdani42/nvim-tree.lua')

    use { "nvim-treesitter/nvim-treesitter", run = ':TSUpdate' }
    use('nvim-treesitter/nvim-treesitter-context')



    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }


    use('f-person/git-blame.nvim')
    use { 'airblade/vim-gitgutter' }
    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }
    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
    use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }

    use('yasuhiroki/github-actions-yaml.vim')
end)


