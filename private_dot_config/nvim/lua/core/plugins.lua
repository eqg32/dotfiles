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
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin-macchiato")
		end,
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		config = function()
			local ibl = require("ibl")
			ibl.setup()
		end,
	},
	{
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
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
			vim.keymap.set({ "n", "v", "i" }, "<M-f>", "<cmd>NvimTreeToggle<cr>")
		end,
		opts = {
			view = {
				side = "right",
			},
		},
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
		"windwp/nvim-autopairs",
		config = true,
	},
	{
		"smjonas/inc-rename.nvim",
		config = true,
	},
	{
		"numToStr/Comment.nvim",
		config = true,
	},
	{
		"phaazon/hop.nvim",
		config = function()
			require("hop").setup()
			vim.keymap.set({ "n", "v", "i" }, "<M-h>", "<Cmd>HopWord<CR>")
		end,
	},
	{
		"stevearc/oil.nvim",
		config = true,
	},
	{
		"MunifTanjim/nui.nvim",
	},
}, { install = { colorscheme = { "catppuccin-macchiato" } } })
