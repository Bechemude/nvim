return {
	-- TODO: textobjects settings
	{ "nvim-treesitter/nvim-treesitter-textobjects" },
	{ "windwp/nvim-ts-autotag" },
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				autotag = {
					enable = true,
				},
				auto_install = true,
				ensure_installed = {
					"lua",
					"html",
					"css",
					"scss",
					"javascript",
					"typescript",
					"tsx",
					"vue",
					"svelte",
					"json",
					"styled",
					-- "clojure",
					"sql",
					"yaml",
					"markdown",
					"markdown_inline",
					"bash",
					"prisma",
					"svelte",
					"sql",
					"regex",
				},
				highlight = { enable = true },
				indent = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						-- TODO: test keymap
						init_selection = "<leader>ii",
						scope_incremental = "<leader>is",
						node_incremental = "<leader>ii",
						node_decremental = "<leader>id",
					},
				},
			})
		end,
	},
}
