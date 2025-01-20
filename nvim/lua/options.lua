require "nvchad.options"

-- add yours here!


-- Relative numbers only when not in insert mode.
vim.opt.relativenumber = true
vim.opt.number = true

vim.api.nvim_create_augroup("RelativeNumbers", {})
vim.api.nvim_create_autocmd("InsertEnter", {
    group = "RelativeNumbers",
    pattern = "*",
    command = "set norelativenumber",
})
vim.api.nvim_create_autocmd("InsertLeave", {
    group = "RelativeNumbers",
    pattern = "*",
    command = "set relativenumber",
})

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
