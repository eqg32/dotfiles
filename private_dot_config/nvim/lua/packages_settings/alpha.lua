return {
	"goolord/alpha-nvim",
	config = function()
		local alpha = require("alpha")
		local theta = require("alpha.themes.theta")
		local button = require("alpha.themes.dashboard").button
		theta.header.val = {
			[[the eternal fear to tell only the]],
			[[    ___       ___       ___       ___       ___   ]],
			[[   /\  \     /\  \     /\__\     /\  \     /\__\  ]],
			[[   \:\  \   /::\  \   /:/ _/_    \:\  \   /:/__/_ ]],
			[[   /::\__\ /::\:\__\ /:/_/\__\   /::\__\ /::\/\__\]],
			[[  /:/\/__/ \;:::/  / \:\/:/  /  /:/\/__/ \/\::/  /]],
			[[  \/__/     |:\/__/   \::/  /   \/__/      /:/  / ]],
			[[             \|__|     \/__/               \/__/  ]],
		}
		theta.buttons.val = {
			button("e", "  New file", "<cmd>enew<cr>"),
			button("q", "  Quit", "<cmd>qa<cr>"),
		}
		alpha.setup(theta.config)
	end,
}
