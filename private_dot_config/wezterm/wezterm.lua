local wezterm = require("wezterm")

-- configuration

local config = {

	-- colour related
	-- color_scheme = "Catppuccin Macchiato",
	color_scheme = "nord",
	window_background_opacity = 0.9,

	-- font related
	font = wezterm.font("CaskaydiaCove NF"),
	font_size = 12.0,

	-- window related
	enable_tab_bar = false,
	enable_wayland = true,
	animation_fps = 144,
	max_fps = 144,

	-- behaviour
	window_close_confirmation = "NeverPrompt",
}

return config
