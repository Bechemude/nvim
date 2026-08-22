return {
  'mfussenegger/nvim-lint',
  config = function()
    local lint = require('lint')

    lint.linters_by_ft = {
      javascript = { 'oxlint' },
      typescript = { 'oxlint' },
      javascriptreact = { 'oxlint' },
      typescriptreact = { 'oxlint' },
      css = { 'stylelint' },
      scss = { 'stylelint' },
      svelte = { 'oxlint' },
      go = { 'golangcilint' },
      python = { 'ruff' },
      kotlin = { 'ktlint' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set('n', 'grl', function()
      lint.try_lint()
    end, { desc = 'Trigger linting for current file' })
  end
}
