-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use('nvim-treesitter/nvim-treesitter-context')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim',
                run = ':MasonUpdate'},
            {'williamboman/mason-lspconfig.nvim'},
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            -- completion sources
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-cmdline'},
            {'hrsh7th/cmp-calc'},
            {'hrsh7th/cmp-nvim-lua'},
            -- snippets
            {'hrsh7th/cmp-vsnip'},
            {'hrsh7th/vim-vsnip'},

        }
    }
    use('onsails/lspkind-nvim')

    -- copilot
    use('github/copilot.vim')


    -- git packages
    use('tpope/vim-fugitive')
    use('tpope/vim-rhubarb')

    -- helper packages
    use('lukas-reineke/indent-blankline.nvim')
    use('mbbill/undotree')
    use ('numToStr/Comment.nvim')
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup()
        end
    })
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({})
        end
    })

    -- file explorer packages
    use {
        'stevearc/oil.nvim',
        config = function()
            require('oil').setup()
        end
    }

    -- visual packages
    use('nvim-lualine/lualine.nvim')
    use('nvim-tree/nvim-web-devicons')
    use("folke/zen-mode.nvim")

    -- colorscheme
    use('ribru17/bamboo.nvim')
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('kvrohit/mellow.nvim')
    use('EdenEast/nightfox.nvim')

    -- misc
    use('eandrju/cellular-automaton.nvim')

    -- language-specific packages
    -- rust
    use('simrat39/rust-tools.nvim')
end)

