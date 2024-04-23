return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "python", "lua", "go", "cpp" },
			auto_install = true,
			highlight = { enable = true },
		})
	end,
}
