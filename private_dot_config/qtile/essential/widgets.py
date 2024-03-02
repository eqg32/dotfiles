from libqtile import widget
from essential.colours import palette

widget_defaults = dict(
        # font things
        font="Iosevka Nerd Font Mono",
        fontsize=20,

        # colour things
        background=palette.background,
        foreground=palette.inactive,

        # other things
        padding=6,
        )
extension_defaults = widget_defaults.copy()


class dectextbox(widget.TextBox):
    def __init__(self, text, **config):
        super().__init__(text, **config)

        # parameters
        self.font = "Iosevka Nerd Font Mono"
        self.fontsize = 36


groupbox = widget.GroupBox(
        # parameters
        highlight_method="text",
        fontsize=20,
        spacing=2,
        disable_drag=True,

        # colour things
        active=palette.inactive,
        inactive=palette.inactive,
        this_current_screen_border=palette.active,
        )

prompt = widget.Prompt(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        prompt=" ",
        )

clock = widget.Clock(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        )

cpu = widget.CPU(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        format="{load_percent}%"
        )

net = widget.Net(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        interface="wlp5s0",
        format="[{down}] [{up}]",
        )

battery = widget.Battery(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        format="{percent:2.0%}",
        battery=0,
        )

keyboard = widget.KeyboardLayout(
        # parameters
        font="Iosevka Nerd Font Mono Bold",
        configured_keyboards=["us", "ru"],
        display_map={
            "us": "us",
            "ru": "ru",
            },
        )

tray = widget.Systray()
