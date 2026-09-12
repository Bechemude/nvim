return {
  "olimorris/codecompanion.nvim",
  version = "^19.0.0",
  event = "VeryLazy",
  opts = {
    log_level = "INFO",
    interactions = {
      chat = {
        adapter = "openrouter",
      },
    },
  },
  keys = {
    {
      "<leader>cc",
      function()
        require("codecompanion").toggle()
      end,
      mode = { "n", "v" },
      desc = "CodeCompanion: Toggle chat",
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
}
