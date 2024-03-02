local lsp_list = {"pylsp", "lua_ls", "clangd", "gopls"}
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = lsp_list,
})


local capabilities = require('cmp_nvim_lsp').default_capabilities()
for lsp = 1, #lsp_list do
    require('lspconfig')[lsp_list[lsp]].setup {
	capabilities = capabilities
    }
end
-- require('lspconfig')["rust-tools"].setup {
--     capabilities = capabilities
-- }
