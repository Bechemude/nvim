local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}

require("options")
require("autocmd")
require("lazy").setup("plugins")

-- test tsgo instead of ts_ls
-- try out oxlint instead of eslint
vim.lsp.enable({
  "lua_ls",
  "html",
  "cssls",
  "stylelint_lsp",
  "emmet_ls",
  "ts_ls",
  "eslint",
  "oxlint",
  "vue_ls",
  "gopls"
})
