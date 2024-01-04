-- netrw options
vim.g.netrw_winsize = 25

-- gui options
vim.opt.guicursor = "a:block"
vim.opt.termguicolors = true

-- line numbering options
vim.opt.number = true
vim.opt.relativenumber = true

-- tab options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.signcolumn = "yes"

-- text options
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.scrolloff = 8

-- undofile options
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = "C:/Users/Ryan/AppData/Local/nvim/undodir"

-- search options
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- shell options
vim.opt.shell = "pwsh"
vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;$PSStyle.OutputRendering = [System.Management.Automation.OutputRendering]::PlainText;'
vim.opt.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
vim.opt.shellpipe  = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.opt.isfname:append("@-@")

vim.opt.completeopt = "menuone,noinsert,noselect"
vim.opt.updatetime = 50

