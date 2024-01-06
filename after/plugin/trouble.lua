vim.keymap.set("n", "<leader>xx", function()
    require("trouble").toggle()
end,
{silent = true, noremap = true}
)

-- jump to the next item, skipping the groups
vim.keymap.set("n", "<leader>xj", function()
    require("trouble").next({skip_groups = true, jump = true});
end,
{silent = true, noremap = true}
)

-- jump to the previous item, skipping the groups
vim.keymap.set("n", "<leader>xk", function()
    require("trouble").previous({skip_groups = true, jump = true});
end,
{silent = true, noremap = true}
)
