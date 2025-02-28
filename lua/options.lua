-- [[ Setting options ]]
-- See `:help vim.opt`
-- For more options, you can see `:help option-list`

-- [[ line options ]]
-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- [[ visual options ]]
vim.opt.guicursor = 'a:block'
vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.scrolloff = 8

-- [[ tab options ]]
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- [[ text options ]]
vim.opt.breakindent = true
vim.opt.cindent = true
vim.opt.wrap = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- [[ saving options ]]
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

-- [[ searching options ]]
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- [[ completion options ]]
vim.opt.inccommand = 'split'
vim.opt.completeopt = 'menuone,noinsert,noselect'

-- [[ timing options ]]
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- vim: ts=2 sts=2 sw=2 et
