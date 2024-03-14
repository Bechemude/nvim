return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 100
	end,
	opts = {},
	config = function()
		local wk = require("which-key")
		wk.register({
			t = { name = "telescope" },
			c = { name = "code" },
			g = { name = "git" },
			d = { name = "debug" },
		}, { prefix = "<leader>" })
	end,
}
