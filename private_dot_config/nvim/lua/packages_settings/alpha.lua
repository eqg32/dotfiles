return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local startify = require("alpha.themes.startify")
		startify.section.header.val = {
			[[    ___       ___       ___            ___       ___       ___       ___       ___       ___   ]],
			[[   /\__\     /\  \     /\  \          /\__\     /\  \     /\  \     /\__\     /\  \     /\__\  ]],
			[[  /:| _|_   /::\  \    \:\  \        /:| _|_   /::\  \   /::\  \   /:/ _/_   _\:\  \   /::L_L_ ]],
			[[ /::|/\__\ /:/\:\__\   /::\__\      /::|/\__\ /::\:\__\ /:/\:\__\ |::L/\__\ /\/::\__\ /:/L:\__\]],
			[[ \/|::/  / \:\/:/  /  /:/\/__/      \/|::/  / \:\:\/  / \:\/:/  / |::::/  / \::/\/__/ \/_/:/  /]],
			[[   |:/  /   \::/  /   \/__/           |:/  /   \:\/  /   \::/  /   L;;/__/   \:\__\     /:/  / ]],
			[[   \/__/     \/__/                    \/__/     \/__/     \/__/               \/__/     \/__/  ]],
			[[]],
			[[nah, just kidding]],
		}
		alpha.setup(startify.config)
	end,
}