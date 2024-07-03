local wezterm = require("wezterm")

-- configuration

local config = {

	-- colour related
	-- color_scheme = "Catppuccin Macchiato",
	color_scheme = "nord",

	-- font related
	font = wezterm.font("CaskaydiaCove NF"),
	font_size = 14.0,

	-- window related
	enable_tab_bar = false,
	animation_fps = 144,
	max_fps = 144,

	-- behaviour
	window_close_confirmation = "NeverPrompt",
}

return config
