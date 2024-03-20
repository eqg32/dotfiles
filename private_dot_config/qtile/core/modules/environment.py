from libqtile import layout, config
from core.modules.bars import topBar
from catppuccin import PALETTE
import os

colours = PALETTE.frappe.colors

groups = [config.Group(workspace, label="") for workspace in "123qwe"]

layouts = [
    layout.MonadTall(
        # general
        margin=16,
        # borders
        border_width=2,
        border_focus=colours.overlay2.hex,
        border_normal=colours.surface2.hex,
    ),
    layout.MonadWide(
        # general
        margin=16,
        # borders
        border_width=2,
        border_focus=colours.overlay2.hex,
        border_normal=colours.surface2.hex,
    ),
    layout.Floating(
        # borders
        border_width=2,
        border_focus=colours.overlay2.hex,
        border_normal=colours.surface2.hex,
    ),
]

floating_layout = layout.Floating(
    # borders
    border_width=2,
    border_focus=colours.overlay2.hex,
    border_normal=colours.surface2.hex,
)

screens = [
    config.Screen(
        # bars
        top=topBar,
        # wallpaper
        wallpaper=os.path.expanduser("~/.config/qtile/core/wallpapers/wallpaper.png"),
        wallpaper_mode="fill",
    )
]
