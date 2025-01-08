-- completions.lua
local cmp = require("cmp")
require("luasnip.loaders.from_vscode").lazy_load() -- Load VSCode snippets

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-o>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body) -- Expand snippets with luasnip
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" }, -- LSP completions
		{ name = "luasnip" }, -- Snippet completions
	}, {
		{ name = "buffer" }, -- Buffer completions
	}),
})
