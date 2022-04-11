local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

util = require("packer/util")

return packer.startup({
	function(use)
		use("wbthomason/packer.nvim")

		-- colors
		use("folke/tokyonight.nvim")

		-- autocomplete
		use({ "neoclide/coc.nvim", branch = "release" })

		-- treesitter
		use("nvim-treesitter/nvim-treesitter")

		-- file explorer
		use("kyazdani42/nvim-tree.lua")

		-- statusline
		use({
			"nvim-lualine/lualine.nvim",
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})

		-- 👀
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
		})

		-- dashboard
		use({
			"goolord/alpha-nvim",
			requires = { "kyazdani42/nvim-web-devicons" },
		})

		-- language specific
		use("ckipp01/stylua-nvim")
		use("liuchengxu/vista.vim")
	end,
	config = { compile_path = util.join_paths(vim.fn.stdpath("config"), "packer_compiled.vim") },
})
