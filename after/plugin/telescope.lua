local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

require('telescope').setup {
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close
            },
        },
        layout_strategy = "bottom_pane",
        layout_config = {
            height = 0.5,
            prompt_position = "bottom",
        },
        border = true,
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
        }
    }
}

require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Git files' })
vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = 'Live grep' })
vim.keymap.set('n', '<leader>km', builtin.keymaps, { desc = '[K]ey[M]aps' })
vim.keymap.set('n', '<leader>gr', builtin.lsp_references, { desc = '[G]o to LSP [R]eferences' })
vim.keymap.set('n', '<leader>ds', builtin.lsp_document_symbols, { desc = '[D]ocument [S]ymbols' })
vim.keymap.set('n', '<leader>?', builtin.oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader>/', builtin.current_buffer_fuzzy_find, { desc = '[/] Fuzzily search in current buffer' })

