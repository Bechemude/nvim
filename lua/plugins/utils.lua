return {
	-- { "HiPhish/rainbow-delimiters.nvim" },
	{
		"Olical/conjure",
		config = function()
			vim.g["conjure#mapping#doc_word"] = "gk"
		end,
	},
	{ "dmmulroy/tsc.nvim" },
	{ "dmmulroy/ts-error-translator.nvim" },
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
			vim.keymap.set("n", "gx", "<esc>:URLOpenUnderCursor<cr>", { desc = "url open under cursor" })
		end,
	},
	-- Doesnt format on auto save
	-- {
	-- 	"https://git.sr.ht/~nedia/auto-save.nvim",
	-- 	event = { "BufReadPre" },
	-- 	opts = {
	-- 		events = { "InsertLeave", "BufLeave" },
	-- 		silent = false,
	-- 		exclude_ft = { "neo-tree" },
	-- 	},
	-- },
}
