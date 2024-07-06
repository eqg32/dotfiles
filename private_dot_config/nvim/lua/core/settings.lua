-- settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.mouse = "v"
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.fixendofline = true
vim.opt.linespace = 5
vim.g.mapleader = " "
vim.g.maplocalleader = ","

if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove NF:h12"
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_cursor_vfx_mode = "sonicboom"
	vim.g.neovide_cursor_smooth_blink = true
	vim.g.neovide_transparency = 0.9
	vim.g.transparency = 0.9
end
