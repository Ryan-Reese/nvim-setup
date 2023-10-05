-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use('nvim-treesitter/playground')
    use('nvim-treesitter/nvim-treesitter-context')

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
            },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-buffer'},
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
    use('tpope/vim-sleuth')
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
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
