vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Reject("")', { silent = true, expr = true })
