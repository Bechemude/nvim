return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")

			vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "files" })
			vim.keymap.set("n", "<leader>tq", builtin.quickfix, { desc = "quickfix?" })
			vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "buffers" })
			vim.keymap.set("n", "<leader>th", builtin.help_tags, { desc = "help tags" })
			vim.keymap.set("n", "<leader>tD", builtin.diagnostics, { desc = "buffers diagnostics" })
			vim.keymap.set("n", "<leader>td", ":Telescope diagnostics bufnr=0 <CR>", { desc = "diagnostics" })
			vim.keymap.set("n", "<leader>tn", ":Telescope notify<CR>", { desc = "notifications" })
			--
			vim.keymap.set("n", "<leader>s", builtin.lsp_document_symbols, { desc = "symbols" })
			vim.keymap.set("n", "<leader>ts", builtin.lsp_workspace_symbols, { desc = "lsp_workspace_symbols" })
			vim.keymap.set(
				"n",
				"<leader>tS",
				builtin.lsp_dynamic_workspace_symbols,
				{ desc = "lsp_dynamic_workspace_symbols" }
			)
			vim.keymap.set("n", "<leader>tr", builtin.lsp_references, { desc = "lsp_references" })
			vim.keymap.set("n", "<leader>tc", builtin.lsp_incoming_calls, { desc = "lsp_incoming_calls" })
			vim.keymap.set("n", "<leader>tC", builtin.lsp_outgoing_calls, { desc = "lsp_outgoing_calls" })

			vim.keymap.set("n", "<leader>ti", builtin.lsp_implementations, { desc = "lsp_implementations" })
			vim.keymap.set("n", "<leader>tf", builtin.lsp_definitions, { desc = "lsp_definitions" })
			vim.keymap.set("n", "<leader>tt", builtin.lsp_type_definitions, { desc = "lsp_type_definitions" })

			--

			vim.keymap.set("n", "<leader>/", builtin.live_grep, { desc = "grep" })

			-- GIT
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "status" })
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "branch" })
			--
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node%_modules/.*" },
					mappings = {
						n = {
							["<c-d>"] = require("telescope.actions").delete_buffer,
						},
						i = {
							["<c-d>"] = require("telescope.actions").delete_buffer,
							["<C-h>"] = "which_key",
						},
					},
				},
			})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
