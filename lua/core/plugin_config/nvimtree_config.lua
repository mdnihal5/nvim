require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = false, -- Show hidden files (dotfiles)
		custom = {}, -- Ensure no custom filters are blocking .env
	},
})

vim.keymap.set("n", "<c-n>", ":NvimTreeFindFile<CR>")
