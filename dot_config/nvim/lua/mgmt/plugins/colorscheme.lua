-- vim: syntax=lua

return {
	-- ADD GRUVBOX COLORSCHEME
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		opts = {
			style = "moon",
		},
		config = function() -- load the colorscheme here
			vim.cmd([[colorscheme gruvbox]])
		end,
		priority = 1000, -- make sure to load this before all the other start plugins
	},
}
