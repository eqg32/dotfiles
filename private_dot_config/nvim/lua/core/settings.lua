-- settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.mouse = "v"
vim.opt.mouse = "a"
vim.opt.cursorline = true
if vim.o.filetype == "lua" then
	vim.opt.shiftwidth = 8
else
	vim.opt.shiftwidth = 4
end
