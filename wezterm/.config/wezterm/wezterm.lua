local wezterm = require("wezterm")

local colors = require("colors")
-- local server = require("server")
local keybinding = require("keybinding")

return {
	font = wezterm.font("Iosevka Nerd Font"),
	font_size = 13,

	-- dirty hack for MacOS rendering issue, lag when switching apps
	-- set it to 1.0 on other platform
	window_background_opacity = 0.999,

	colors = colors.tokyonight,
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,

	-- ssh_domains = server,
	keys = keybinding,
}
