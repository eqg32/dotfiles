from libqtile import hook
import subprocess
import os


@hook.subscribe.startup_once
def start():
    script = os.path.expanduser("~/.config/qtile/core/modules/autostart.sh")
    subprocess.call(script)
