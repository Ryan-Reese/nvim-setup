vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("")', {
    replace_keycodes = false,
    expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Reject("")', {
    replace_keycodes = false,
    expr = true })
