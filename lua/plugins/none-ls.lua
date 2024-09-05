 return {
	-- {
	-- 	"zeioth/none-ls-autoload.nvim",
	-- 	event = "BufEnter",
	-- 	dependencies = { "williamboman/mason.nvim", "nvimtools/none-ls.nvim" },
	-- 	opts = {},
	-- },
	-- {
	-- 	"nvimtools/none-ls.nvim",
	-- 	dependencies = {
	-- 		"jay-babu/mason-null-ls.nvim",
	-- 		"nvimtools/none-ls-extras.nvim",
	-- 	},
	-- 	config = function()
	-- 		local null_ls = require("null-ls")
	--
	-- 		null_ls.setup({
	-- 			sources = {
	-- 				-- lua
	-- 				null_ls.builtins.formatting.stylua,
	-- 				null_ls.builtins.diagnostics.luacheck,
	-- 				--
	-- 				-- js/ts
	-- 				-- require("none-ls.diagnostics.eslint"),
	-- 				-- require("none-ls.diagnostics.eslint_d"),
	-- 				-- require("none-ls.code_actions.eslint"),
	-- 				-- require("none-ls.formatting.eslint"),
	-- 				-- require("none-ls.formatting.prettier"),
	-- 				-- null_ls.builtins.formatting.prettierd,
	-- 				-- null_ls.builtins.formatting.eslint,
	-- 				-- null_ls.builtins.diagnostics.eslint,
	-- 				null_ls.builtins.formatting.biome.with({
	-- 					filetypes = {
	-- 						"javascript",
	-- 						"javascriptreact",
	-- 						"json",
	-- 						"jsonc",
	-- 						"typescript",
	-- 						"typescriptreact",
	-- 						"css",
	-- 					},
	-- 					args = {
	-- 						"check",
	-- 						"--write",
	-- 						"--unsafe",
	-- 						"--formatter-enabled=true",
	-- 						"--organize-imports-enabled=true",
	-- 						"--skip-errors",
	-- 						"--stdin-file-path=$FILENAME",
	-- 					},
	-- 				}),
	-- 			},
	-- 		})
	-- 	end,
	-- },
	-- {
	-- 	"mfussenegger/nvim-lint",
	-- 	event = {
	-- 		"BufReadPre",
	-- 		"BufNewFile",
	-- 	},
	-- 	config = function()
	-- 		local lint = require("lint")
	--
	-- 		lint.linters_by_ft = {
	-- 			-- markdown = { "vale" },
	-- 			javascript = { "eslint_d" },
	-- 			typescript = { "eslint_d" },
	-- 			javascriptreact = { "eslint_d" },
	-- 			typescriptreact = { "eslint_d" },
	-- 			svelte = { "eslint_d" },
	-- 		}
	-- 		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
	--
	-- 		vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
	-- 			group = lint_augroup,
	-- 			callback = function()
	-- 				lint.try_lint()
	-- 			end,
	-- 		})
	--
	-- 		vim.keymap.set("n", "<leader>ll", function()
	-- 			lint.try_lint()
	-- 		end, { desc = "Trigger linting for current file" })
	-- 	end,
	-- },
	-- {
	-- 	"stevearc/conform.nvim",
	-- 	event = { "BufReadPre", "BufNewFile" },
	-- 	config = function()
	-- 		local conform = require("conform").setup({
	-- 			formatters_by_ft = {
	-- 				lua = { "stylua" },
	-- 				svelte = { { "prettierd", "prettier" } },
	-- 				javascript = { { "prettierd", "prettier" } },
	-- 				typescript = { { "prettierd", "prettier" } },
	-- 				javascriptreact = { { "prettierd", "prettier" } },
	-- 				typescriptreact = { { "prettierd", "prettier" } },
	-- 				json = { { "prettierd", "prettier" } },
	-- 				graphql = { { "prettierd", "prettier" } },
	-- 				markdown = { { "prettierd", "prettier" } },
	-- 				erb = { "htmlbeautifier" },
	-- 				html = { "htmlbeautifier" },
	-- 				bash = { "beautysh" },
	-- 				css = { { "prettierd", "prettier" } },
	-- 				scss = { { "prettierd", "prettier" } },
	-- 			},
	-- 		})
	--
	-- 		vim.keymap.set({ "n", "v" }, "<leader>l", function()
	-- 			conform.format({
	-- 				lsp_fallback = true,
	-- 				async = false,
	-- 				timeout_ms = 500,
	-- 			})
	-- 		end, { desc = "Format file or range (in visual mode)" })
	-- 	end,
	-- },
	-- {
	-- 	"https://git.sr.ht/~nedia/auto-format.nvim",
	-- 	event = "BufWinEnter",
	-- 	config = function()
	-- 		require("auto-format").setup()
	-- 	end,
	-- },
}

-- TODO: why tsserver cant sort eslint: simple-import-sort
-- TODO: why eslint cant auto import
