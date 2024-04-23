return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")
		startify.section.header.val = {
			[[                                                   ]],
			[[  █████▒▄▄▄        ▄████   ▄████  ▒█████  ▄▄▄█████▓]],
			[[▓██   ▒▒████▄     ██▒ ▀█▒ ██▒ ▀█▒▒██▒  ██▒▓  ██▒ ▓▒]],
			[[▒████ ░▒██  ▀█▄  ▒██░▄▄▄░▒██░▄▄▄░▒██░  ██▒▒ ▓██░ ▒░]],
			[[░▓█▒  ░░██▄▄▄▄██ ░▓█  ██▓░▓█  ██▓▒██   ██░░ ▓██▓ ░ ]],
			[[░▒█░    ▓█   ▓██▒░▒▓███▀▒░▒▓███▀▒░ ████▓▒░  ▒██▒ ░ ]],
			[[ ▒ ░    ▒▒   ▓▒█░ ░▒   ▒  ░▒   ▒ ░ ▒░▒░▒░   ▒ ░░   ]],
			[[ ░       ▒   ▒▒ ░  ░   ░   ░   ░   ░ ▒ ▒░     ░    ]],
			[[ ░ ░     ░   ▒   ░ ░   ░ ░ ░   ░ ░ ░ ░ ▒    ░      ]],
			[[             ░  ░      ░       ░     ░ ░           ]],
		}
		alpha.setup(startify.config)
	end,
}
