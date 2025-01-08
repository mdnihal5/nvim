require("conform").setup({
	formatters_by_ft = {
		javascript = { "prettierd", "prettier" },
		typescript = { "prettierd", "prettier" },
		jsx = { "prettierd", "prettier" },
		tsx = { "prettierd", "prettier" },
		json = { "prettierd", "prettier" },
		html = { "prettierd", "prettier" },
		css = { "prettierd", "prettier" },
		markdown = { "prettierd", "prettier" },
		yaml = { "prettierd", "prettier" },
		["*"] = { "prettier" },
	},
	format_on_save = {
		-- Explicitly exclude files you don't want to format
		exclude_filetypes = {
			"env",
			"gitignore",
			"local",
		},
	},
})
