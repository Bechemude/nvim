return {
  {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v4.x",
    dependencies = {
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },
      { "neovim/nvim-lspconfig" },
    },
    config = function()
      local lsp_zero = require("lsp-zero")

      -- lsp_zero.format_on_save({
      --   format_opts = {
      --     async = false,
      --     timeout_ms = 10000,
      --   },
      --   servers = {
      --     ["tsserver"] = { "javascript", "typescript" },
      --     ["lua_ls"] = { "lua" },
      --   },
      -- })
      --
      -- TODO: save formatted but not for scss/json

      lsp_zero.on_attach(function(client, bufnr)
        local opts = { buffer = bufnr, noremap = true, silent = true }

        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "go", vim.lsp.buf.type_definition, opts)
        -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gs", vim.lsp.buf.signature_help, opts)
        vim.keymap.set("n", "<leader>cf", vim.lsp.buf.rename, opts, { desc = "test" })
        vim.keymap.set("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Diagnostic" })
        vim.keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
        vim.keymap.set({ "n", "x" }, "<leader>cf", function()
          vim.lsp.buf.format({ async = true })
        end, opts, { desc = "Format LSP" })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      end)

      -- lsp_zero.setup_servers({ 'lua_ls' }) -- Add other servers as needed
      lsp_zero.setup_servers({
        "lua_ls",
        "tsserver",
        "eslint",
        "cssls",
        "html",
        "emmet_ls",
      })

      require("mason").setup({})
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "eslint",
          "cssls",
          "html",
          "emmet_ls",
        },
        handlers = {
          lsp_zero.default_setup,
        },
      })
    end,
  },
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      -- your options here
    }
  },
}
