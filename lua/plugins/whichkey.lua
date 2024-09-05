return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 100
  end,
  opts = {
    icons = { mappings = false },
  },
  -- opts.icons.mappings = false,
  -- TODO disable icons

  config = function()
    local wk = require("which-key")

    wk.add({
      {
        { "<leader>c", group = "code" },
        { "<leader>d", group = "debug" },
        { "<leader>g", group = "git" },
        { "<leader>t", group = "telescope" },
        { "<leader>u", group = "UI" },
      },
    }, { prefix = "<leader>" })
  end,
}
