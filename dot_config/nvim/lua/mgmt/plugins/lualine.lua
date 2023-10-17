return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		options = {
			theme = "gruvbox",
			icons_enabled = true,
			section_separators = { left = "", right = "" },
			component_separators = { left = "", right = "" },
		},
		sections = {
			lualine_x = {
				{
					require("lazy.status").updates,
					cond = require("lazy.status").has_updates,
					color = { fg = "ff9e64" },
				},
				{ "encoding" },
				{ "fileformat" },
				{ "filetype" },
			},
		},
	},
	--					{
	--						lazy_status.updates,
	--						cond = lazy_status.has_updates,
	--						color = { fg = "#ff9e64" },
	--					},
	--	config = function()
	--		local lualine = require("lualine")
	--		local lazy_status = require("lazy.status") -- to configure lazy pending updates count
	--
	--		-- configure lualine with modified theme
	--		lualine.setup({
	--			options = {
	--				theme = my_lualine_theme,
	--			},
	--			sections = {
	--				lualine_x = {
	--					{
	--						lazy_status.updates,
	--						cond = lazy_status.has_updates,
	--						color = { fg = "#ff9e64" },
	--					},
	--					{ "encoding" },
	--					{ "fileformat" },
	--					{ "filetype" },
	--				},
	--			},
	--		})
	--	end,
}
