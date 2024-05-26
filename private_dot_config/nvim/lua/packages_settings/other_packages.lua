return {
	{ "stevearc/dressing.nvim", config = true },
	{ "folke/which-key.nvim", config = true },
	{ "abecodes/tabout.nvim", config = true },
	{ "windwp/nvim-autopairs", config = true },
	{ "smjonas/inc-rename.nvim", config = true },
	{ "numToStr/Comment.nvim", config = true },
	{ "stevearc/oil.nvim", config = true },
	{ "folke/neodev.nvim", config = true },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "HiPhish/rainbow-delimiters.nvim" },
	{ "m4xshen/autoclose.nvim", config = true },
	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", config = true },
	{
		"mawkler/modicator.nvim",
		init = function()
			vim.o.termguicolors = true
			vim.o.cursorline = true
		end,
	},
	{
		"anuvyklack/windows.nvim",
		dependencies = {
			"anuvyklack/middleclass",
			"anuvyklack/animation.nvim",
		},
		config = true,
	},
	{
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
			})
			vim.keymap.set("n", "<M-f>", "<cmd>NvimTreeToggle<cr>")
		end,
	},
	{
		"karb94/neoscroll.nvim",
		config = function()
			if not vim.g.neovide then
				require("neoscroll").setup({
					hide_cursor = false,
				})
			end
		end,
	},
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
	},
	{
		"ray-x/lsp_signature.nvim",
		opts = { hint_prefix = " ", handler_opts = { border = "none" } },
	},
	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").create_default_mappings()
		end,
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		"stevearc/conform.nvim",
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black -l 79" },
					go = { "gofmt" },
				},
				format_on_save = {
					lsp_fallbacks = true,
				},
			})
		end,
	},
	{
		"max397574/better-escape.nvim",
		opts = { mapping = { "jk", "je" } },
	},
	{
		"akinsho/toggleterm.nvim",
		config = function()
			require("toggleterm").setup()
			vim.keymap.set("n", "<M-d>", "<cmd>ToggleTerm<cr>")
		end,
	},
	{
		"Olical/conjure",
		dependencies = {
			{
				"PaterJason/cmp-conjure",
				config = function()
					local cmp = require("cmp")
					local cmp_config = cmp.get_config()
					table.insert(cmp_config.sources, {
						name = "buffer",
						options = {
							sources = {
								{ name = "conjure" },
							},
						},
					})
					cmp.setup(cmp_config)
				end,
			},
		},
		config = function()
			-- fennel
			vim.g["conjure#filetype#fennel"] = "conjure.client.fennel.stdio"
		end,
	},
}
