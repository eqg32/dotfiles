from libqtile import widget
from catppuccin.palette import PALETTE

colours = PALETTE.frappe.colors

widget_defaults = {
        "background": colours.base.hex,
        "foreground": colours.text.hex,
        "font": "JetBrainsMono Nerd Font SemiBold",
        "fontsize": 16,
        "padding": 8,
        }

topWidgets = [
        widget.TextBox(
            text="",
            foreground=colours.green.hex,
            font="Symbols Nerd Font",
            fontsize=20,
            ),

        widget.Spacer(16),

        widget.CPU(
            format=" {load_percent}%",
            foreground=colours.base.hex,
            background=colours.blue.hex
            ),

        widget.Spacer(16),

        widget.Memory(
            format=" {MemUsed:.0f}{mm}",
            foreground=colours.base.hex,
            background=colours.blue.hex
            ),

        widget.Spacer(16),

        widget.Prompt(
            prompt=" ",
            cursor=False,
            padding=4,
            foreground=colours.lavender.hex,
            fontsize=20,
            ),

        widget.Spacer(),

        widget.GroupBox(
            disable_drag=True,
            toggle=False,
            highlight_method="text",
            urgent_highlight_method="text",
            active=colours.overlay2.hex,
            inactive=colours.surface2.hex,
            this_current_screen_border=colours.blue.hex,
            this_screen_border=colours.blue.hex,
            urgent_text=colours.peach.hex,
            urgent_border=colours.peach.hex,
            font="Symbols Nerd Font",
            fontsize=12,
            ),

        widget.Spacer(),

        widget.CheckUpdates(
            distro="Void",
            initial_text=" checking updates",
            display_format=" updates available: {updates}",
            colour_have_updates=colours.flamingo.hex,
            colour_no_updates=colours.flamingo.hex,
            foreground=colours.flamingo.hex,
            fontsize=20,
            ),

        widget.Spacer(16),

        widget.CurrentLayout(
            fmt=" {}",
            foreground=colours.maroon.hex,
            font="JetBrainsMono Nerd Font Bold",
            fontsize=20,
            ),

        widget.Spacer(16),

        widget.KeyboardLayout(
            fmt=" {}",
            configured_keyboards=["us", "ru"],
            display_map={"us": "us", "ru": "ru"},
            foreground=colours.peach.hex,
            font="JetBrainsMono Nerd Font Bold",
            fontsize=20,
            ),

        widget.Spacer(16),

        widget.Clock(
            format=" %H:%M",
            foreground=colours.yellow.hex,
            font="JetBrainsMono Nerd Font Bold",
            fontsize=20,
            ),
        ]
