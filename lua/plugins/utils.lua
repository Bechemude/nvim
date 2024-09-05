return {
  {
    "nvim-pack/nvim-spectre",
    config = function()
      vim.keymap.set("n", "<leader>st", '<cmd>lua require("spectre").toggle()<CR>', {
        desc = "Toggle Spectre",
      })
      vim.keymap.set("n", "<leader>sw", '<cmd>lua require("spectre").open_visual({select_word=true})<CR>', {
        desc = "Search current word",
      })
      -- vim.keymap.set("v", "<leader>sw", '<esc><cmd>lua require("spectre").open_visual()<CR>', {
      -- 	desc = "Search current word",
      -- })
      vim.keymap.set("n", "<leader>sp", '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>', {
        desc = "Search on current file",
      })
    end,
  },
  -- TODO: clear
  -- {
  -- 	"Olical/conjure",
  -- 	config = function()
  -- 		vim.g["conjure#mapping#doc_word"] = "gk"
  -- 	end,
  -- },
  {
    "dmmulroy/ts-error-translator.nvim",
    config = function()
      require("ts-error-translator").setup()
    end
  },
  {
    "gaborvecsei/memento.nvim",
    config = function()
      local memento = require("memento")
      local Ui = require("memento.ui")

      vim.keymap.set("n", "<leader>m", memento.toggle, { desc = "memento" })
      vim.keymap.set("n", "<leader>M", memento.clear_history, { desc = "memento clear" })
      vim.keymap.set("n", "<C-c>", Ui.close_popup)
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    "sontungexpt/url-open",
    event = "VeryLazy",
    cmd = "URLOpenUnderCursor",
    config = function()
      local status_ok, url_open = pcall(require, "url-open")
      if not status_ok then
        return
      end
      url_open.setup({})
      vim.keymap.set("n", "gx", "<esc><cmd>URLOpenUnderCursor<cr>", { desc = "url open under cursor" })
    end,
  },
}
