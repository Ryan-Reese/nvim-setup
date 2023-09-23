local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup('HighlightYank', {})
local rmrr_group = augroup('rmrr', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 50,
            on_visual = true,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = rmrr_group,
    pattern = "*",
    callback = function()
        if not vim.o.binary and vim.o.filetype ~= 'markdown' then
            local current_view = vim.fn.winsaveview()
            vim.cmd([[keeppatterns %s/\s\+$//e]])
            vim.fn.winrestview(current_view)
        end
    end
})
