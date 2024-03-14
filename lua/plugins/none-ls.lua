return {
	{
		"nvimtools/none-ls.nvim",
		config = function()
			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					-- lua
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.diagnostics.luacheck,
					--
					-- js/ts
					-- null_ls.builtins.formatting.prettierd,
					-- null_ls.builtins.diagnostics.tsserver,
					-- null_ls.builtins.diagnostics.eslint_d,
					--
					-- clj
					null_ls.builtins.formatting.zprint,
					null_ls.builtins.diagnostics.clj_kondo,
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
