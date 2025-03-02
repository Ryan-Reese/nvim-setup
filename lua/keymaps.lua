-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move line down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move line up' })
vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Append next line to current ine' })

-- maintain screen centering when moving around
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Scroll window downwards' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Scroll window upwards' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Next word' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Previous word' })

vim.keymap.set('n', 'Q', '<nop>', { desc = 'nop' })

-- insert lines above or below wihout moving cursor
vim.keymap.set('n', '<leader>o', '<Cmd>set paste<CR>m`o<Esc>``<Cmd>set nopaste<CR>', { desc = 'Insert line below' })
vim.keymap.set('n', '<leader>O', '<Cmd>set paste<CR>m`O<Esc>``<Cmd>set nopaste<CR>', { desc = 'Insert line above' })

-- exit terminal mode with escape
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- toggle line wrapping
vim.keymap.set('n', '<leader>tw', function()
  vim.cmd 'set wrap!'
end, { desc = '[T]oggle [W]rap lines' })

-- togger color column
vim.keymap.set('n', '<leader>tc', function()
  local value = vim.api.nvim_get_option_value('colorcolumn', {})
  if value == '' then
    vim.api.nvim_set_option_value('colorcolumn', '80', {})
  else
    vim.api.nvim_set_option_value('colorcolumn', '', {})
  end
end, { desc = '[T]oggle [C]olour column' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- vim: ts=2 sts=2 sw=2 et
