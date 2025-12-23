return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      require("mason-tool-installer").setup({
        ensure_installed = {
          "lua_ls",
          "html",
          "cssls",
          "stylelint_lsp",
          "emmet_ls",
          "tsgo",
          "eslint",
          "oxlint"
        }
      })
    end,
  }
}
