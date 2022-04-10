local wezterm = require("wezterm")

local keybinding = {
	{
		key = "|",
		mods = "CMD|SHIFT",
		action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }),
	},
	{
		key = "-",
		mods = "CMD|SHIFT",
		action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }),
	},
	{
		key = "x",
		mods = "CMD",
		action = wezterm.action({ CloseCurrentPane = { confirm = true } }),
	},
}

return keybinding
