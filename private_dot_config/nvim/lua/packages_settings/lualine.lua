return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = true,
	opts = {
		options = {
			component_separators = { "", "" },
			section_separators = { "", "" },
		},
		sections = {
			lualine_x = { "filetype" },
		},
	},
}