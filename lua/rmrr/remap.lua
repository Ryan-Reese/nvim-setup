-- map leader key
vim.g.mapleader = " "

-- move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- append next line to current line
vim.keymap.set("n", "J", "mzJ`z")

-- maintain screen centering when moving around
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste without overwriting register
vim.keymap.set("x", "<leader>pa", [["_dP]])

-- yank without overwriting register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete without overwriting register
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- map nop
vim.keymap.set("n", "Q", "<nop>")

-- whole file rename
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- insert lines above or below wihout moving cursor
vim.keymap.set("n", "<leader>o", "<Cmd>set paste<CR>m`o<Esc>``<Cmd>set nopaste<CR>")
vim.keymap.set("n", "<leader>O", "<Cmd>set paste<CR>m`O<Esc>``<Cmd>set nopaste<CR>")

-- execute code in file
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

-- exit terminal mode with escape
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- toggle line wrapping
vim.keymap.set("n", "<leader>wr", function()
    vim.cmd("set wrap!")
end)

-- togger color column
vim.keymap.set("n", "<leader>cc", function()
    local value = vim.api.nvim_get_option_value("colorcolumn", {})
    if value == "" then
        vim.api.nvim_set_option_value("colorcolumn", "80", {})
    else
        vim.api.nvim_set_option_value("colorcolumn", "", {})
    end
end)
