require("material").setup{
    plugins = {
	"neogit",
	"nvim-cmp",
	"nvim-tree",
	"nvim-web-devicons",
    },
    lualine_style = "stealth",
}
vim.g.material_style = "oceanic"
vim.cmd.colorscheme("material")
