require('neogen').setup {
    enabled = true,
    input_after_comment = true,
    languages = {
        python = {
            template = {
                annotation_convention = "numpydoc" -- for a full list of annotation_conventions, see supported-languages below,
                -- for more template configurations, see the language's configuration file in configurations/{lang}.lua
                }
        },
    }
}

local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<Leader>doc", ":lua require('neogen').generate()<CR>", opts)
