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
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            -- additional sources
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-nvim-lua'},
        }
    }
<<<<<<< HEAD
=======
    use {
        'j-hui/fidget.nvim',
        tag = 'legacy',
        config = function()
            require("fidget").setup {
                -- options
            }
        end,
    }
>>>>>>> 3e0ca1c85513a3021f05e70ffe1bd0c2d4939340
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

    -- file explorer packages
    use {
        'stevearc/oil.nvim',
        config = function()
            require('oil').setup()
        end
    }

    -- command line packages
    use('gelguy/wilder.nvim')

    -- visual packages
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use('EdenEast/nightfox.nvim')
    use('nvim-lualine/lualine.nvim')
    use('nvim-tree/nvim-web-devicons')
    use("folke/zen-mode.nvim")
    -- misc
    use('eandrju/cellular-automaton.nvim')
    use('dstein64/vim-startuptime')
end)
