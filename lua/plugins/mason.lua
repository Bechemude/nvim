return {
  {
    "williamboman/mason.nvim",
    opts = {},
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
      auto_update = true,
      run_on_start = true,
      start_delay = 3000, -- Delay to let everything settle
    },
  },
}
