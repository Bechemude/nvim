return {
	"amansingh-afk/milli.nvim",
	lazy = false,
	config = function()
		require("milli").vimenter({ splash = "chrome", loop = true })
	end,
}
