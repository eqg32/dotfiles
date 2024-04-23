import os

import tomllib
from libqtile import config, layout

from core.modules.bars import bar

# setting options
with open(os.path.expanduser("~/.config/qtile/options.toml"), "rb") as file:
    options = tomllib.load(file)

# setting theme
with open(
    os.path.expanduser(
        "~/.config/qtile/core/themes/{theme}.toml".format(
            theme=options["visuals"]["theme"]
        )
    ),
    "rb",
) as file:
    theme = tomllib.load(file)

# defining layout default settings
layout_defaults = {
    "margin": 16,
    "border_width": 2,
    "border_focus": theme["palette0"]["focused"],
    "border_normal": theme["palette0"]["unfocused"],
}

aliases = {
    "bsp": layout.Bsp(**layout_defaults),
    "columns": layout.Columns(**layout_defaults),
    "floating": layout.Floating(
        # border
        border_width=2,
        border_focus=theme["palette0"]["focused"],
        border_normal=theme["palette0"]["unfocused"],
    ),
    "matrix": layout.Matrix(**layout_defaults),
    "max": layout.Max(**layout_defaults),
    "monadtall": layout.MonadTall(**layout_defaults),
    "monadthreecol": layout.MonadThreeCol(**layout_defaults),
    "monadwidej": layout.MonadWide(**layout_defaults),
    "ratiotile": layout.RatioTile(**layout_defaults),
    "screensplit": layout.ScreenSplit(**layout_defaults),
    "slice": layout.Slice(**layout_defaults),
    "spiral": layout.Spiral(**layout_defaults),
    "stack": layout.Stack(**layout_defaults),
    "tile": layout.Tile(**layout_defaults),
    "treetab": layout.TreeTab(**layout_defaults),
    "verticaltile": layout.VerticalTile(**layout_defaults),
    "zoomy": layout.Zoomy(**layout_defaults),
}

groups = [config.Group(group) for group in options["general"]["groups"]]

layouts = [aliases[layout] for layout in options["general"]["layouts"]]

floating_layout = layout.Floating(
    # border
    border_width=2,
    border_focus=theme["palette0"]["focused"],
    border_normal=theme["palette0"]["unfocused"],
)

screens = [
    config.Screen(
        # wallpaper
        wallpaper=os.path.expanduser(options["visuals"]["wallpaper"]),
        wallpaper_mode="fill",
    )
]

match options["visuals"]["bar_position"]:
    case "top":
        screens[0].top = bar
    case "bottom":
        screens[0].bottom = bar
    case _:
        screens[0].top = bar
