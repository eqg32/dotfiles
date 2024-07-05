return {
	"folke/which-key.nvim",
	config = function()
		local wk = require("which-key")
		wk.register({
			["<space>"] = {
				b = {
					name = "buffers actions",
					n = { "<cmd>BufferLineCycleNext<cr>", "next buffer" },
					p = { "<cmd>BufferLineCyclePrev<cr>", "previous buffer" },
					c = { "<cmd>BufferLinePickClose<cr>", "close buffer" },
				},
				a = {
					name = "toggle ...",
					f = { "<cmd>NvimTreeToggle<cr>", "toggle file manager" },
					t = { "<cmd>ToggleTerm<cr>", "toggle terminal" },
					n = { "<cmd>Neogit<cr>", "toggle Neogit" },
				},
			},
		})
		wk.setup()
	end,
}
