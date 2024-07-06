return {
	"kyazdani42/nvim-tree.lua",
	config = function()
		require("nvim-tree").setup({
			view = {
				side = "right",
				float = {
					enable = true,
					open_win_config = {
						border = "none",
						col = math.pow(2, 16),
					},
				},
			},
			renderer = {
				icons = {
					glyphs = {
						default = "",
						symlink = "",
						bookmark = "",
						modified = "",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
							empty = "",
							empty_open = "",
							symlink = "",
							symlink_open = "",
						},
						git = {
							unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "",
							untracked = "",
							deleted = "",
							ignored = "",
						},
					},
				},
			},
		})
	end,
}
