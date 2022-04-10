require("lualine").setup({
	options = {
		theme = "tokyonight",
		component_separators = { left = "|", right = "|" },
		section_separators = { left = "░", right = "░" },
	},
	tabline = {
		lualine_a = { "buffers" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "tabs" },
	},
	extensions = { "fzf" },
})
