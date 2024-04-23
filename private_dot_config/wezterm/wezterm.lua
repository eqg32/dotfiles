local wezterm = require("wezterm")

-- configuration

local config = {

    -- colour related
    color_scheme = "Catppuccin Macchiato",
    -- color_scheme = "Everforest Dark (Gogh)",

    -- font related
    font = wezterm.font "0xProto Nerd Font Mono",
    font_size = 16.0,

    -- window related
    enable_tab_bar = false,
    animation_fps = 144,
    max_fps = 144,

    -- behaviour
    window_close_confirmation = "NeverPrompt"
}


return config
