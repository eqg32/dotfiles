local lsp_list = { "pylsp", "gopls", "clangd", "lua_ls" }

return {
	"williamboman/mason.nvim",
	dependencies = { "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig" },
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = lsp_list,
		})
		local capabilities = require("cmp_nvim_lsp").default_capabilities()
		for lsp = 1, #lsp_list do
			require("lspconfig")[lsp_list[lsp]].setup({
				capabilities = capabilities,
			})
		end
	end,
}
