vim.keymap.set("n", "<leader>git", vim.cmd.Git)

local rmrr_fugitive = vim.api.nvim_create_augroup("rmrr_fugitive", {})

local autocmd = vim.api.nvim_create_autocmd
autocmd("BufWinEnter", {
    group = rmrr_fugitive,
    pattern = "*",
    callback = function()
        if vim.bo.ft ~= "fugitive" then
            return
        end

        local bufnr = vim.api.nvim_get_current_buf()
        local opts = {buffer = bufnr, remap = false}
        vim.keymap.set("n", "<leader>pu", function()
            vim.cmd.Git('push')
        end, opts)

        vim.keymap.set("n", "<leader>PU", function()
            vim.cmd.Git({'pull',  '--rebase'})
        end, opts)
    end,
})
