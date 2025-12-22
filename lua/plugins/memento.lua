return {
  "gaborvecsei/memento.nvim",
  config = function()
    local memento = require("memento")
    local Ui = require("memento.ui")

    vim.keymap.set("n", "<leader>m", memento.toggle, { desc = "memento" })
    vim.keymap.set("n", "<leader>M", memento.clear_history, { desc = "memento clear" })
    vim.keymap.set("n", "<C-c>", Ui.close_popup)
  end,
}
