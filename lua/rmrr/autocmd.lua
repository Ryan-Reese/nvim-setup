local create_autocmd = vim.api.nvim_create_autocmd
local create_augroup = vim.api.nvim_create_augroup
local default = create_augroup("default", { clear = true })

create_autocmd("TextYankPost", {
    group = default,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 50,
            on_visual = true,
        })
    end,
})

create_autocmd({"BufWritePre"}, {
    group = default,
    pattern = "*",
    callback = function()
        if not vim.o.binary and vim.o.filetype ~= 'markdown' then
            local current_view = vim.fn.winsaveview()
            vim.cmd([[keeppatterns %s/\s\+$//e]])
            vim.fn.winrestview(current_view)
        end
    end
})
