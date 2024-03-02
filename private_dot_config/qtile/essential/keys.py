from libqtile.config import Key
from libqtile.lazy import lazy
from essential.screen import groups


# some definitions
mod = "mod4"
terminal = "wezterm"

# key definitions
up = "k"
down = "j"
right = "l"
left = "h"


keys = [
        # moving between windows
        Key([mod], up, lazy.layout.up()),
        Key([mod], down, lazy.layout.down()),
        Key([mod], right, lazy.layout.right()),
        Key([mod], left, lazy.layout.left()),
        Key([mod], "space", lazy.layout.next()),

        # moving windows
        Key([mod, "shift"], up, lazy.layout.shuffle_up()),
        Key([mod, "shift"], down, lazy.layout.shuffle_down()),
        Key([mod, "shift"], right, lazy.layout.shuffle_right()),
        Key([mod, "shift"], left, lazy.layout.shuffle_left()),

        # other things
        Key([mod], "Return", lazy.spawn(terminal)),
        Key([mod], "r", lazy.spawncmd()),
        Key([mod], "w", lazy.next_layout()),
        Key([mod, "shift"], "d", lazy.window.kill()),
        Key([mod, "control"], "r", lazy.reload_config()),
        Key([mod, "shift", "control"], "q", lazy.shutdown()),
        Key(
            ["shift", "control"], "space",
            lazy.widget["keyboardlayout"].next_keyboard(),
            )
        ]


# workspaces keys
for ws in groups:
    keys.extend(
            [
                Key(
                    [mod],
                    ws.name,
                    lazy.group[ws.name].toscreen(),
                    ),
                Key(
                    [mod, "shift"],
                    ws.name,
                    lazy.window.togroup(ws.name, switch_group=True),
                    )
                ]
            )
