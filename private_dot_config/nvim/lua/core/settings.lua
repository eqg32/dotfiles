-- settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.cursorline = true
vim.opt.fixendofline = true
vim.opt.mouse = "v"
vim.opt.mouse = "a"
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 8

-- setting shift width depending on the filetype
vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.go", "*.lua" },
	callback = function()
		vim.opt.shiftwidth = 8
	end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = { "*.gleam" },
	callback = function()
		vim.opt.shiftwidth = 2
	end,
})

-- neovide settings
if vim.g.neovide then
	vim.o.guifont = "FiraCode Nerd Font:h12"
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_cursor_vfx_mode = "sonicboom"
	vim.g.neovide_cursor_smooth_blink = true
	vim.g.neovide_transparency = 0.9
	vim.g.neovide_padding_top = 16
	vim.g.neovide_padding_bottom = 4
	vim.g.neovide_padding_right = 16
	vim.g.neovide_padding_left = 16
	vim.g.neovide_hide_mouse_when_typing = true
end
