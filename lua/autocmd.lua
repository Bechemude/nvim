-- no auto-continue comments on new line
vim.api.nvim_create_autocmd('FileType', {
  group = vim.api.nvim_create_augroup('no_auto_comment', {}),
  callback = function()
    vim.opt_local.formatoptions:remove({ 'c', 'r', 'o' })
  end
})


-- hide line numbers on special buffers (splash, help, qf, terminal)
vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
  group = vim.api.nvim_create_augroup("number_control", { clear = true }),
  callback = function()
    if vim.bo.buftype ~= "" then
      vim.opt_local.number = false
      vim.opt_local.relativenumber = false
    else
      vim.opt_local.number = true
      vim.opt_local.relativenumber = true
    end
  end,
})
vim.api.nvim_create_autocmd("VimEnter", {
  group = vim.api.nvim_create_augroup("number_control_vimenter", { clear = true }),
  callback = function()
    vim.schedule(function()
      if vim.bo.buftype ~= "" then
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
      end
    end)
  end,
})

-- highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	group = vim.api.nvim_create_augroup("highlight_yank", { clear = true }),
	pattern = "*",
	desc = "highlight selection on yank",
	callback = function()
		vim.highlight.on_yank({ timeout = 200, visual = true })
	end,
})
