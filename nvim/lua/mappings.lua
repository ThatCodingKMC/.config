require "nvchad.mappings"

-- add yours here
vim.keymap.set("!", "<C-j>", "<cmd><C-U>TmuxNavigateDown<CR>")

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
