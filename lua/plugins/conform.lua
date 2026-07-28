return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      -- Customize or remove this keymap to your liking
      "grf",
      function()
        require("conform").format({ async = true })
      end,
      mode = "",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      javascript = { "eslint", "prettier" },
      typescript = { "eslint", "prettier" },
      javascriptreact = { "eslint", "prettier" },
      typescriptreact = { "eslint", "prettier" },
      css = { "prettier" },
      scss = { "prettier" },
      html = { "eslint", "prettier" },
      json = { "eslint", "prettier" },
      yaml = { "prettier" },
      markdown = { "prettier" },
      go = { "goimports", "gofumpt" },
      python = { "ruff_format" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Set up format-on-save
    -- format_on_save = { timeout_ms = 500 },
  },
}
