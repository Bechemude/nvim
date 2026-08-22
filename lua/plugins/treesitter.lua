return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local parsers = {
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
      "sql",
      "regex",
      "go",
      "gomod",
      "gosum",
      "gowork",
      "python",
      "kotlin",
    }

    require("nvim-treesitter").install(parsers)

    vim.treesitter.language.register("javascript", { "javascript", "javascriptreact" })
    vim.treesitter.language.register("typescript", { "typescript", "typescriptreact" })
    vim.treesitter.language.register("tsx", "tsx")
    vim.treesitter.language.register("vue", "vue")
    vim.treesitter.language.register("svelte", "svelte")

    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        if pcall(vim.treesitter.start) then
          vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
      end,
    })
  end,
}
