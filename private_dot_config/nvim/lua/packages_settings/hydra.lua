return {
	"nvimtools/hydra.nvim",
	config = function()
		local buffer_actions = require("hydra")
		buffer_actions({
			name = "buffer actions",
			mode = "n",
			body = "<space>b",
			config = { invoke_on_body = true, color = "red" },
			heads = {
				{
					"n",
					function()
						vim.cmd("BufferLineCycleNext")
					end,
					{ desc = "next buffer" },
				},
				{
					"p",
					function()
						vim.cmd("BufferLineCyclePrev")
					end,
					{ desc = "previous buffer" },
				},
				{
					"g",
					function()
						vim.cmd("BufferLinePick")
					end,
					{ desc = "pick buffer" },
				},
				{
					"c",
					function()
						vim.cmd("BufferLinePickClose")
					end,
					{ desc = "close buffer" },
				},
			},
		})
		local actions_menu = require("hydra")
		actions_menu({
			name = "actions",
			mode = "n",
			body = "<space>a",
			config = { invoke_on_body = true, color = "blue" },
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
			},
		})
	end,
}
