local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	require("core.pluginSettings.alpha"),
	require("core.pluginSettings.mason"),
	require("core.pluginSettings.nvim-cmp"),
	require("core.pluginSettings.lualine"),
	require("core.pluginSettings.treesitter"),
	require("core.pluginSettings.hop"),
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			local ibl = require("ibl")
			ibl.setup()
		end,
	},
	{
		"m4xshen/autoclose.nvim",
		config = function()
			require("autoclose").setup()
		end,
	},
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
							border = "shadow",
							col = math.pow(2, 16),
						},
					},
				},
			})
			vim.keymap.set("n", "<M-f>", "<cmd>NvimTreeToggle<cr>")
		end,
	},
	{
		"2kabhishek/nerdy.nvim",
		dependencies = {
			"stevearc/dressing.nvim",
			"nvim-telescope/telescope.nvim",
		},
		cmd = "Nerdy",
	},
	{
		"folke/neodev.nvim",
		priority = 1000,
		opts = {},
	},
	{
		"karb94/neoscroll.nvim",
		opts = { hide_cursor = false },
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
		opts = { hint_prefix = " ", handler_opts = { border = "shadow" } },
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
		"max397574/better-escape.nvim",
		-- opts = { mapping = { "jj", "jk", "ee" } },
	},
	{ "rose-pine/neovim", name = "rose-pine" },
	{ "abecodes/tabout.nvim", config = true },
	{ "windwp/nvim-autopairs", config = true },
	{ "smjonas/inc-rename.nvim", config = true },
	{ "numToStr/Comment.nvim", config = true },
	{ "stevearc/oil.nvim", config = true },
	{ "HiPhish/rainbow-delimiters.nvim" },
	{ "MunifTanjim/nui.nvim" },
}, { install = { colorscheme = { "catppuccin-macchiato" } } })
