return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		bigfile = { enabled = true },
		scratch = { enabled = true },
		-- dashboard = { enabled = true },
		-- explorer = { enabled = true },
		-- indent = { enabled = true },
		input = { enabled = true },
		-- picker = { enabled = true },
		notifier = { enabled = true },
		-- quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		-- statuscolumn = { enabled = true },
		-- words = { enabled = true },
	},
	keys = {
		{
			"<leader>tn",
			function()
				Snacks.notifier.show_history()
			end,
			desc = "Toggle Scratch Buffer",
		},
		{
			"<leader>.",
			function()
				Snacks.scratch()
			end,
			desc = "Toggle Scratch Buffer",
		},
		{
			"<leader>Z",
			function()
				Snacks.scratch.select()
			end,
			desc = "Select Scratch Buffer",
		},
	},
}
