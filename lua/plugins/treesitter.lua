return {
  -- TODO: textobjects settings
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = true,
        ensure_installed = {
          "lua",
          "html",
          "css",
          "scss",
          "javascript",
          "typescript",
          "tsx",
          "vue",
          "svelte",
          "json",
          "styled",
          "yaml",
          "markdown",
          "markdown_inline",
          "bash",
          "prisma",
          "svelte",
          "sql",
          "regex",
        },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = true,
          keymaps = {
            init_selection = "<leader>ii",
            scope_incremental = "<leader>is",
            node_incremental = "<leader>ii",
            node_decremental = "<leader>id",
          },
        },
      })
    end,
  },
}
