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
      javascript = { "oxlint", "oxfmt" },
      typescript = { "oxlint", "oxfmt" },
      javascriptreact = { "oxlint", "oxfmt" },
      typescriptreact = { "oxlint", "oxfmt" },
      css = { "oxfmt" },
      scss = { "oxfmt" },
      html = { "oxlint", "oxfmt" },
      json = { "oxlint", "oxfmt" },
      yaml = { "oxfmt" },
      markdown = { "oxfmt" },
      go = { "goimports", "gofumpt" },
      python = { "ruff_format" },
      kotlin = { "ktlint" },
      astro = { "prettier" },
    },
    -- Set default options
    default_format_opts = {
      lsp_format = "fallback",
    },
    -- Set up format-on-save
    -- format_on_save = { timeout_ms = 500 },
  },
}
