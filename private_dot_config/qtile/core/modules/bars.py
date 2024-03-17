from libqtile.bar import Bar
from core.modules.widgets import topWidgets


topBar = Bar(
        widgets=topWidgets,
        size=28,
        margin=[16, 16, 0, 16],
        )
