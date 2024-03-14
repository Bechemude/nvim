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
					"clojure",
					"sql",
					"yaml",
				},
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
