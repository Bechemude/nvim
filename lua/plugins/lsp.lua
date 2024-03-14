return {
	{
		"aznhe21/actions-preview.nvim",
		config = function()
			vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
		end,
	},
	{ "folke/neodev.nvim", opts = {} },
	{ "VonHeikemen/lsp-zero.nvim", branch = "v3.x" },
	{ "neovim/nvim-lspconfig" },
	-- { "hrsh7th/cmp-nvim-lsp" },
	-- { "hrsh7th/nvim-cmp" },
	-- { "L3MON4D3/LuaSnip" },
	{
		"hedyhli/outline.nvim",
		lazy = true,
		cmd = { "Outline", "OutlineOpen" },
		keys = { -- Example mapping to toggle outline
			{ "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
		},
		opts = {
			-- Your setup opts here
		},
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			local lsp_zero = require("lsp-zero")

			lsp_zero.on_attach(function(client, bufnr)
				-- see :help lsp-zero-keybindings
				-- to learn the available actions
				lsp_zero.default_keymaps({ buffer = bufnr })
			end)

			require("mason-lspconfig").setup({
				ensure_installed = {
					-- "lua_ls",
					-- "eslint",
					-- "tsserver",
					"clojure_lsp",
				},
				handlers = {
					lsp_zero.default_setup,
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			-- local capabilities = require("cmp_nvim_lsp").default_capabilities()

			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.clojure_lsp.setup({ capabilities = capabilities })
			-- lspconfig.eslint.setup({ capabilities = capabilities })
			-- lspconfig.tsserver.setup({ capabilities = capabilities })

			-- vim.keymap.set("n", "<space>cd", vim.diagnostic.open_float, { desc = "Diagnostic" })
			-- vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
			-- vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
			-- vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

			-- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
			-- vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>")
			-- vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
			-- vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
			-- vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
			-- vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)

			--
			-- vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
			-- vim.keymap.set({ "n", "x" }, "<leader>cf", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
			-- vim.keymap.set("n", "<leader>cr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
		end,
	},
	{
		"hinell/lsp-timeout.nvim",
		dependencies = { "neovim/nvim-lspconfig" },
	},
}
