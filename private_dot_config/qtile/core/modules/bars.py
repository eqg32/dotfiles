import os

import tomllib
from libqtile.bar import Bar
from libqtile.lazy import lazy
from libqtile import widget

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

widget_defaults = {
    "foreground": theme["palette0"]["foreground"],
    "background": theme["palette0"]["background"],
    "font": options["visuals"]["font"],
    "fontsize": 16,
    "padding": 8,
}

widgets = [
    widget.TextBox(
        text="",
        foreground=theme["palette1"]["accent0"],
        mouse_callbacks={"Button1": lazy.spawncmd()},
        fontsize=20,
    ),
    widget.Spacer(16),
    widget.CPU(
        format=" {load_percent}%",
        foreground=theme["palette0"]["background"],
        background=theme["palette1"]["accent1"],
    ),
    widget.Spacer(16),
    widget.Memory(
        format="{MemUsed: .0f}{mm}",
        foreground=theme["palette0"]["background"],
        background=theme["palette1"]["accent1"],
    ),
    widget.Spacer(16),
    widget.Prompt(
        foreground=theme["palette1"]["accent2"],
        cursor=False,
        prompt=" ",
    ),
    widget.Spacer(),
    widget.GroupBox(
        active=theme["palette1"]["accent3"],
        block_highlight_text_color=theme["palette0"]["background"],
        this_current_screen_border=theme["palette1"]["accent3"],
        other_screen_border=theme["palette1"]["accent3"],
        urgent_alert_method="block",
        urgent_border=theme["palette0"]["alert"],
        highlight_method="block",
        disable_drag=True,
        hide_unused=True,
        toggle=False,
        use_mouse_wheel=False,
        rounded=False,
    ),
    widget.Spacer(),
    widget.CheckUpdates(
        display_format=" updates available: {updates}",
        distro="Void",
        colour_have_updates=theme["palette1"]["accent4"],
        colour_no_updates=theme["palette1"]["accent4"],
        foreground=theme["palette1"]["accent4"],
        initial_text=" checking updates",
    ),
    widget.Spacer(16),
    widget.CurrentLayout(
        fmt=" {}",
        foreground=theme["palette1"]["accent5"],
    ),
    widget.Spacer(16),
    widget.KeyboardLayout(
        configured_keyboards=options["keyboard"]["layouts"],
        display_map=options["keyboard"]["displayes_layouts"],
        fmt="󰥻 {}",
        foreground=theme["palette1"]["accent6"],
    ),
    widget.Spacer(16),
    widget.Clock(
        fmt=" {}",
        foreground=theme["palette1"]["accent7"],
    ),
]

# and finally creating a bar!
bar = Bar(
    widgets=widgets,
    size=32,
    border_color=theme["palette0"]["background"],
)

match options["visuals"]["bar_position"]:
    case "top":
        bar.margin = [16, 16, 0, 16]
    case "bottom":
        bar.margin = [0, 16, 16, 16]
    case _:
        bar.margin = [16, 16, 0, 16]
