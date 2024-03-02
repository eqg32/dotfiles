from libqtile.config import Group, Screen
from libqtile import layout
from essential.colours import palette
from essential import bars


groups = [Group(workspace, label="") for workspace in "123qwe"]

layouts = [
        layout.MonadTall(
            margin=12,

            # borders
            border_width=4,
            border_focus=palette.active,
            border_normal=palette.inactive,
            ),
        ]

screens = [
        Screen(
            bottom=bars.primary_bar,
            # top=bars.mini_bar,
            wallpaper="~/.config/qtile/wallpapers/wallpaper.png",
            wallpaper_mode="fill",
            ),
        ]
