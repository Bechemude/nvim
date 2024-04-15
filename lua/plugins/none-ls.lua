return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"jay-babu/mason-null-ls.nvim",
		},
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- lua
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.diagnostics.luacheck,
					--
					-- js/ts
					null_ls.builtins.formatting.prettierd,
					null_ls.builtins.diagnostics.eslint_d,
				},
			})
		end,
	},
	{
		"https://git.sr.ht/~nedia/auto-format.nvim",
		event = "BufWinEnter",
		config = function()
			require("auto-format").setup()
		end,
	},
}
