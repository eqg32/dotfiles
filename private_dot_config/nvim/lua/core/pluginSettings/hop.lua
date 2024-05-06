return	{
		"smoka7/hop.nvim",
		config = function()
			local hop = require("hop")

			vim.keymap.set({ "n", "v" }, "s", function()
				hop.hint_patterns()
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "S", function()
				hop.hint_words()
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "f", function()
				hop.hint_char1()
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "F", function()
				hop.hint_lines()
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "t", function()
				hop.hint_char1({ hint_offset = -1 })
			end, { remap = true })
			vim.keymap.set({ "n", "v" }, "T", function()
				hop.hint_anywhere({ hint_offset = 1 })
			end, { remap = true })

			hop.setup()
		end,
	}
