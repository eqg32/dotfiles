import os

import tomllib
from libqtile.config import Click, Drag, Key
from libqtile.lazy import lazy

from core.modules.environment import groups

# getting options
with open(os.path.expanduser("~/.config/qtile/options.toml"), "rb") as file:
    options = tomllib.load(file)


# definitions
mod = options["keymappings"]["mod"]
terminal = options["general"]["terminal"]

up = options["keymappings"]["up"]
down = options["keymappings"]["down"]
right = options["keymappings"]["right"]
left = options["keymappings"]["left"]


keys = [
    # movement between windows
    Key([mod], up, lazy.layout.up()),
    Key([mod], down, lazy.layout.down()),
    Key([mod], right, lazy.layout.right()),
    Key([mod], left, lazy.layout.left()),
    Key([mod], "space", lazy.screen.next_group()),
    # window movement
    Key([mod, "shift"], up, lazy.layout.shuffle_up()),
    Key([mod, "shift"], down, lazy.layout.shuffle_down()),
    Key([mod, "shift"], right, lazy.layout.shuffle_right()),
    Key([mod, "shift"], left, lazy.layout.shuffle_left()),
    # other actions
    Key([mod], "Return", lazy.spawn(terminal)),
    Key([mod], "r", lazy.spawncmd()),
    Key([mod], "f", lazy.window.toggle_fullscreen()),
    Key([mod, "shift"], "f", lazy.window.toggle_floating()),
    Key([mod, "shift"], "d", lazy.window.kill()),
    Key([mod, "control"], "r", lazy.reload_config()),
    Key([mod, "shift", "control"], "q", lazy.shutdown()),
    Key([mod, "shift"], "space", lazy.next_layout()),
    Key(
        ["shift", "control"],
        "space",
        lazy.widget["keyboardlayout"].next_keyboard(),
    ),
]


# workspace keys
for workspace in groups:
    keys.extend(
        [
            Key(
                [mod],
                workspace.name,
                lazy.group[workspace.name].toscreen(),
            ),
            Key(
                [mod, "shift"],
                workspace.name,
                lazy.window.togroup(workspace.name, switch_group=False),
            ),
        ]
    )


mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod],
        "Button3",
        lazy.window.set_size_floating(),
        start=lazy.window.get_position(),
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]
