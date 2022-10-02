local group = vim.api.nvim_create_augroup("open all folds", { clear = true })
vim.api.nvim_create_autocmd("BufReadPost", {
    command = "normal zR",
    pattern = "*",
    group = group
})

