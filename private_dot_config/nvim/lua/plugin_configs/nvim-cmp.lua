local cmp = require "cmp"

local kind_icons = {
  Text = "",
  Method = "󰘧",
  Function = "󰊕",
  Constructor = "",
  Field = "󰽏",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "󰌁",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = ""
}

cmp.setup({
    snippet = {
	expand = function(args)
	    vim.fn["vsnip#anonymous"](args.body)
	end
	},
    window = {
	completion = cmp.config.window.bordered({ border = "single" }),
	documentation = cmp.config.window.bordered({ border = "shadow" })
	},
    mapping = cmp.mapping.preset.insert({
	["<Tab>"] = cmp.mapping.confirm({select = true})
	}),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
      }, {
        { name = 'buffer' },
    }),
    formatting = {
    format = function(entry, vim_item)
	vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind)
        vim_item.menu = ({
            buffer = "[Buffer]",
    	    nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
	    nvim_lua = "[Lua]",
	    latex_symbols = "[LaTeX]",
        })[entry.source.name]
        return vim_item
    end
  }
})
