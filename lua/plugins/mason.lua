return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "html",
        "cssls",
        "stylelint_lsp",
        "emmet_ls",
        "ts_ls",
        "eslint",
        "vue_ls",
        "gopls",
      },
    },
    dependencies = {
      { "williamboman/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "eslint_d",
        "prettier",
        "stylelint",
        "gofumpt",
        "goimports",
        "golangci-lint",
      },
    },
  },
}
