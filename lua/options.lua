vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.opt.cursorline = true
vim.opt.conceallevel = 1

vim.cmd("syntax off")
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set nowrap")
vim.opt.fillchars:append({ eob = " " })

vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-s>", "<cmd>w<CR>") -- doesn't work in zellij
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>ut", "<cmd>set wrap! linebreak!<CR>", { desc = "toggle wrap & linebreak" })
vim.keymap.set("n", "<leader>q", "<cmd>bp|bd #<CR>", { desc = "Close buffer" })
vim.keymap.set("n", "[b", "<cmd>bp<CR>", { desc = "Prev buffer" })
vim.keymap.set("n", "]b", "<cmd>bn<CR>", { desc = "Next buffer" })
-- vim.keymap.set("n", "<leader>d", "<cmd>\"_d", { desc = "Delete without clipboard" })

-- theme toggle
vim.keymap.set("n", "<leader>ul", function()
  if vim.o.background == "dark" then
    vim.o.background = "light"
  else
    vim.o.background = "dark"
  end
end, { desc = "Toggle dark/light background" })

-- Отключаем вставку по средней кнопке мыши во всех основных режимах
vim.keymap.set({'n', 'v', 'i', 'c'}, '<MiddleMouse>', '<Nop>', { silent = true })
vim.keymap.set({'n', 'v', 'i', 'c'}, '<2-MiddleMouse>', '<Nop>', { silent = true })
vim.keymap.set({'n', 'v', 'i', 'c'}, '<3-MiddleMouse>', '<Nop>', { silent = true })
vim.keymap.set({'n', 'v', 'i', 'c'}, '<4-MiddleMouse>', '<Nop>', { silent = true })

