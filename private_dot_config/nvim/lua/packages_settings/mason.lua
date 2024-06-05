return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "pylsp", "gopls", "lua_ls" },
		})

		-- setting up language servers
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		local lspconfig = require("lspconfig")
		lspconfig.pylsp.setup({ capabilities = capabilities })
		lspconfig.gopls.setup({ capabilities = capabilities })
		lspconfig.lua_ls.setup({ capabilities = capabilities })
		lspconfig.gleam.setup({ capabilities = capabilities })
	end,
}
