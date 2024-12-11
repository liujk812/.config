vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opts = {
	noremap = true,
	silent = true,
}

------------------- Normal mode -------------------
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)

------------------- Insert mode -------------------

------------------- Visual mode --------------------
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
