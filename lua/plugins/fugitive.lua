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
