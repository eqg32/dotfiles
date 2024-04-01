local wezterm = require("wezterm")

-- configuration

local config = {

    -- colour related
    color_scheme_dirs = { "~/.config/wezterm/colors" },
    color_scheme = "catppuccin-frappe",

    -- font related
    font = wezterm.font "0xProto Nerd Font Mono",
    font_size = 14.0,

    -- window related
    enable_tab_bar = false,
    animation_fps = 144,
    max_fps = 144,

    -- behaviour
    window_close_confirmation = "NeverPrompt"
}


return config
