return {
  "folke/zen-mode.nvim",
  opts = {
    vim.keymap.set("n", "<leader>z", "<esc><cmd>ZenMode<cr>", { desc = "Zen Mode" })

    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
