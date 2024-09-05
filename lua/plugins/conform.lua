return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        lua = { "stylua" },
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" },
        typescriptreact = { "prettierd" },
        css = { "prettierd" },
        scss = { "prettierd" },
        html = { "prettierd" },
        -- json = { "prettierd" },
        yaml = { "prettierd" },
        markdown = { "prettierd" },
      },
      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
    })

    vim.keymap.set({ "n", "x" }, "<leader>cF", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }, {desc = "Format Conform"})
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
