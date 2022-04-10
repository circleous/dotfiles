return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("tpope/vim-fugitive")
	use({ "neoclide/coc.nvim", branch = "release" })
	use("folke/tokyonight.nvim")
	use("nvim-treesitter/nvim-treesitter")
	use("tpope/vim-commentary")
	use("ThePrimeagen/git-worktree.nvim")
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use("sheerun/vim-polyglot")
	use("ckipp01/stylua-nvim")
end)
