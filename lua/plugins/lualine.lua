return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			sections = {
				lualine_a = {
					{
						function()
							local reg = vim.fn.reg_recording()
							if reg == "" then
								return "a"
							end -- not recording
							return "recording to " .. reg
						end,
					},
				},
				lualine_c = { { "filename", path = 1 } },
			},
		})
	end,
}
