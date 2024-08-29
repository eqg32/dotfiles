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
	require("packages.other"),
	require("packages.alpha"),
	require("packages.lualine"),
	require("packages.mason"),
	require("packages.nvim_cmp"),
	require("packages.nvimtree"),
	require("packages.treesitter"),
	require("packages.hydra"),
}, { install = { colorscheme = { "nord" } } })
