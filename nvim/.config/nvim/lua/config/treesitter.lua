require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"lua",
		"python",
		"javascript",
		"typescript",
		"html",
		"css",
		"php",
		"java",
		"cpp",
		"c",
		"vim",
		"json",
		"yaml",
		"toml",
		"bash",
		"go",
		"rust",
		"dockerfile",
		"tsx",
	},
	context_commentstring = {
		enable = true,
	},
	highlight = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
