vim.api.nvim_create_autocmd('BufWinEnter', {
  group = vim.api.nvim_create_augroup('fugitive', { clear = true }),
  callback = function()
    if vim.bo.ft ~= 'fugitive' then
      return
    end
    local bufnr = vim.api.nvim_get_current_buf()
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set('n', '<leader>pu', function()
      vim.cmd.Git 'push'
    end, opts)
    vim.keymap.set('n', '<leader>PU', function()
      vim.cmd.Git 'pull'
    end, opts)
  end,
})

vim.keymap.set('n', '<leader>git', vim.cmd.Git)

return {
  {
    'tpope/vim-fugitive',
  },
  {
    'tpope/vim-rhubarb',
    after = 'vim-fugitive',
  },
}
