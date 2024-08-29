return {
	"nvimtools/hydra.nvim",
	config = function()
		local buffer_actions = require("hydra")
		buffer_actions({
			name = "buffer actions",
			mode = "n",
			body = "<space>b",
			config = { invoke_on_body = true, color = "pink" },
			heads = {
				{
					"l",
					function()
						vim.cmd("BufferLineCycleNext")
					end,
					{ desc = "next buffer" },
				},
				{
					"h",
					function()
						vim.cmd("BufferLineCyclePrev")
					end,
					{ desc = "previous buffer" },
				},
				{
					"k",
					function()
						vim.cmd("BufferLinePick")
					end,
					{ desc = "pick buffer" },
				},
				{
					"j",
					function()
						vim.cmd("BufferLinePickClose")
					end,
					{ desc = "close buffer" },
				},
				{
					"<esc>",
					nil,
					{ desc = "exit", exit = true },
				},
			},
		})
		local actions_menu = require("hydra")
		actions_menu({
			name = "actions",
			mode = "n",
			body = "<space>a",
			config = { invoke_on_body = true, color = "teal" },
			heads = {
				{
					"f",
					function()
						vim.cmd("NvimTreeToggle")
					end,
					{ desc = "toggle NvimTree" },
				},
				{
					"t",
					function()
						vim.cmd("ToggleTerm")
					end,
					{ desc = "toggle Terminal" },
				},
				{
					"n",
					function()
						vim.cmd("Neogit")
					end,
					{ desc = "open Neogit" },
				},
				{
					"t",
					function()
						vim.cmd("Telescope")
					end,
					{ desc = "open Telescope" },
				},
				{
					"<esc>",
					nil,
					{ desc = "exit", exit = true },
				},
			},
		})
	end,
}
