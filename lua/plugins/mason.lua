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
        "oxlint",
        "vue_ls",
        "gopls",
        "pyright",
        "kotlin_lsp",
        "astro_ls",
      },
    },
  },

  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "oxlint",
        "oxfmt",
        "stylelint",
        "gofumpt",
        "goimports",
        "golangci-lint",
        "ruff",
        "ktlint",
        "prettier",
      },
      auto_update = true,
      run_on_start = true,
      start_delay = 3000, -- Delay to let everything settle
    },
  },
}
