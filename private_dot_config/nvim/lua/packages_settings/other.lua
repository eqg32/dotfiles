return {
	{ "stevearc/dressing.nvim", config = true },
	{ "abecodes/tabout.nvim", config = true },
	{ "windwp/nvim-autopairs", config = true },
	{ "smjonas/inc-rename.nvim", config = true },
	{ "numToStr/Comment.nvim", config = true },
	{ "stevearc/oil.nvim", config = true },
	{ "folke/lazydev.nvim", config = true },
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "HiPhish/rainbow-delimiters.nvim" },
	{ "m4xshen/autoclose.nvim", config = true },
	{ "ggandor/flit.nvim", config = true },
	{ "yutkat/confirm-quit.nvim", config = true },
	{ "akinsho/bufferline.nvim", config = true },
	{ "akinsho/toggleterm.nvim", config = true },
	{ "folke/which-key.nvim", config = true },
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
			require("catppuccin").setup({
				default_integrations = true,
				integrations = {
					leap = true,
					treesitter = true,
				},
			})
			-- vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		"shaunsingh/nord.nvim",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("nord")
		end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,
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
		"linux-cultist/venv-selector.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			{ "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
		},
		config = true,
		lazy = false,
		branch = "regexp",
	},
	{
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
		},
		config = true,
		event = { "CmdlineEnter" },
		ft = { "go", "gomod" },
		build = ':lua require("go.install").update_all_sync()',
	},
	{
		"amitds1997/remote-nvim.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-telescope/telescope.nvim",
		},
		config = true,
	},
}
