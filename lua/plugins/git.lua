return {
  {
    "echasnovski/mini.diff",
    version = "*",
    config = function()
      require("mini.diff").setup()
      vim.keymap.set("n", "<leader>gd", "<cmd>lua MiniDiff.toggle_overlay()<CR>", { desc = "toggle_overlay" })
    end,
  },
  {
    "FabijanZulj/blame.nvim",
    config = function()
      require("blame").setup({
        colors = {
          "#ffffff",
          "#897973",
          "#aaaaaa",
          "#848484",
          "#B2BDC4",
          "#e3d6be",
          "#ebdbb2",
          "#b8bb26",
          "#fabd2f",
          "#83a598",
        },
      })
      vim.keymap.set("n", "<leader>gt", "<cmd>BlameToggle<CR>", { desc = "blame" })
    end,
  },
}
