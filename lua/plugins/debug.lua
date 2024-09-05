return {
  "chrisgrieser/nvim-chainsaw",
  config = function()
    local chainsaw = require("chainsaw")

    chainsaw.setup {
      logStatements = {
        variableLog = {
          -- TODO all logs and all langs
          typescriptreact = {
            "// WIP remove",
            'console.log(\'%s %s:\', %s);',
          },
          otherFiletype = { 'typescript' }

        },
        beepLog = {
          typescriptreact = {
            "// WIP remove",
            'console.log(\'%s beep %s\');'
          },
          otherFiletype = { 'typescript' }
          -- TODO typescript doesnt work, only TSX
        },

      },
    }


    -- add console.table for js
    vim.keymap.set("n", "<leader>dv", chainsaw.variableLog, { desc = "variable" })
    vim.keymap.set("n", "<leader>do", chainsaw.objectLog, { desc = "object" })
    vim.keymap.set("n", "<leader>da", chainsaw.assertLog, { desc = "assert" })
    vim.keymap.set("n", "<leader>dm", chainsaw.messageLog, { desc = "message" })
    vim.keymap.set("n", "<leader>db", chainsaw.beepLog, { desc = "beep" })
    vim.keymap.set("n", "<leader>dt", chainsaw.timeLog, { desc = "time" })
    vim.keymap.set("n", "<leader>dd", chainsaw.debugLog, { desc = "debug" })
    vim.keymap.set("n", "<leader>dr", chainsaw.removeLogs, { desc = "remove" })
  end,
}
