return {
	"zenbones-theme/zenbones.nvim",
	dependencies = { "rktjmp/lush.nvim" },
	config = function()
		vim.cmd.colorscheme("zenbones")
	end,
}
-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
-- 	config = function()
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }
