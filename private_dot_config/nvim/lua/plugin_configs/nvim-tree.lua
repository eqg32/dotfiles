require"nvim-tree".setup({
    auto_reload_on_write = true,
    view = {
	number = true,
	width = 32,
	float = {
	    enable = true,
	    quit_on_focus_loss = true,
	    open_win_config = {
		border = "single",
		width = 30,
		height = 20
	    }
	},
    }
})

-- local function open_nvim_tree()
--     require "nvim-tree.api".tree.open()
--     vim.cmd("wincmd p")
-- end
--
-- vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
