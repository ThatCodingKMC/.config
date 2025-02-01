vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
  },

}, lazy_config)


-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

vim.keymap.set("!", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
vim.keymap.set("!", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
vim.keymap.set("!", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
vim.keymap.set("!", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
vim.keymap.set("!", "<C-\\>", "<cmd>TmuxNavigatePrevious<CR>")

-- Enable saving and restoring folds
vim.opt.foldmethod = "manual"  -- Or any fold method you prefer (e.g., "indent", "syntax", etc.)
vim.opt.foldenable = true      -- Ensure folding is enabled

vim.api.nvim_create_autocmd({"BufWinLeave"}, {
  pattern = "*",
  command = "mkview",  -- Save the folds when leaving a buffer
})

vim.api.nvim_create_autocmd({"BufWinEnter"}, {
  pattern = "*",
  command = "silent! loadview",  -- Restore the folds when entering a buffer
})


