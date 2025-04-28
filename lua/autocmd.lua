-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank {
      higroup = 'IncSearch',
      timeout = 50,
      on_visual = true,
    }
  end,
})

-- Not needed with conform?
--[===[
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Remove trailing whitespace',
  group = vim.api.nvim_create_augroup('remove-whitespace', { clear = true }),
  callback = function()
    if not vim.o.binary and vim.o.filetype ~= 'markdown' then
      local current_view = vim.fn.winsaveview()
      vim.cmd [[keeppatterns %s/\s\+$//e]]
      vim.fn.winrestview(current_view)
    end
  end,
})
--]===]
