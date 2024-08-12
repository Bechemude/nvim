vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.cursorline = true

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- doesn't work in zellij
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>ut", "<cmd>set wrap!<CR>", { desc = "toggle wrap" })
vim.keymap.set("n", "<leader>q", "<cmd>bp|bd #<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "[b", "<cmd>bp<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bn<CR>", { desc = "Next buffer" })

-- theme toggle
-- vim.cmd("set background=light")
-- vim.keymap.set("n", "<C-s>", ":set background=dark<CR>")
