require("specs").setup({
    min_jump = 2,
    popup = {
	inc_ms = 8,
	fader = require("specs").pulse_fader,
        resizer = require("specs").slide_resizer,
    }
})
require("autoclose").setup({})
require("twilight").setup({})
require("neogit").setup({})
require("oil").setup({})
require("illuminate").configure({})
require("Comment").setup({})
require("inc_rename").setup({})
require("neodev").setup({})
require("middleclass")
require("animation")
require("windows").setup({})
require("neoscroll").setup({})
require"alpha".setup(require"alpha.themes.startify".config)
