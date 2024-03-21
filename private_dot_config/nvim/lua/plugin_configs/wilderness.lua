local wilderness = require("wilder")

wilderness.setup({
	modes = { ":", "/", "?" },
})

wilderness.set_option(
	"renderer",
	wilderness.popupmenu_renderer(wilderness.popupmenu_palette_theme({
		border = "single",
		max_height = "40%",
		min_height = 0,
		max_width = "30%",
		prompt_position = "top",
	}))
)
