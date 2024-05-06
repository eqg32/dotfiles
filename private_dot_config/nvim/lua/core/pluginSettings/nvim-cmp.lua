return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-vsnip",
		"hrsh7th/vim-vsnip",
		"onsails/lspkind.nvim",
	},
	priority = 1000,
	config = function()
		local cmp = require("cmp")
		local lspkind = require("lspkind")

		local cmp_autopairs = require("nvim-autopairs.completion.cmp")
		cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

		cmp.setup({
			snippet = {
				expand = function(args)
					vim.fn["vsnip#anonymous"](args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered({ border = "shadow" }),
				documentation = cmp.config.window.bordered({ border = "shadow" }),
			},
			mapping = cmp.mapping.preset.insert({
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "vsnip" },
			}, { { name = "buffer" } }),
			formatting = { format = lspkind.cmp_format() },
			preselect = cmp.PreselectMode.None,
		})
	end,
}
