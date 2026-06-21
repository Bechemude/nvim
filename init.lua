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

-- Prepend mason bin to PATH
vim.env.PATH = vim.fn.stdpath("data") .. "/mason/bin:" .. vim.env.PATH

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
    callback = function()
        vim.api.nvim_set_hl(0, "@markup.strikethrough", { strikethrough = true })
    end,
})

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

