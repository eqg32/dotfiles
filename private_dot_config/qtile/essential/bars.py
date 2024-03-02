from libqtile.bar import Bar
from libqtile import widget
from essential.colours import palette
from essential import widgets


# mini_bar = Bar(
#         [
#             widgets.groupbox,
#             ],
#         36,
#         margin=[15, 1653, 0, 15],
#         border_width=8,
#         border_color=palette.inactive,
#         )

primary_bar = Bar(
        [
            widgets.groupbox,
            widgets.prompt,
            widget.Spacer(),
            widgets.dectextbox(text="󰥻"),
            widgets.keyboard,
            widgets.dectextbox(text="󰤨"),
            widgets.net,
            # widgets.dectextbox(text=""),
            # widgets.battery,
            widgets.dectextbox(text=""),
            widgets.cpu,
            widgets.dectextbox(text=""),
            widgets.clock,
            ],
        36,
        # margin=[0, 0, 4, 0],
        border_width=[4, 4, 0, 4],
        margin=[-4, 384, 4, 384],
        # border_width=4,
        border_color=palette.inactive,
        )
