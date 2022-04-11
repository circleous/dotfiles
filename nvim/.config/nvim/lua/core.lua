if packer_plugins and packer_plugins["tokyonight.nvim"] and packer_plugins["tokyonight.nvim"].loaded then
  vim.g.tokyonight_style = "night"
  vim.g.tokyonight_sidebars = { "terminal", "packer" }
  vim.cmd([[colorscheme tokyonight]])
end
