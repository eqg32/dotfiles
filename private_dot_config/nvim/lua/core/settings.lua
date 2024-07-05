-- settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.mouse = "v"
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.shiftwidth = 8
vim.opt.fixendofline = true
vim.opt.autochdir = true
vim.opt.linespace = 5
vim.g.mapleader = " "
vim.g.maplocalleader = ","

if vim.g.neovide then
	vim.o.guifont = "CaskaydiaCove NF:h14"
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_cursor_vfx_mode = "sonicboom"
	vim.g.neovide_cursor_smooth_blink = true
end
