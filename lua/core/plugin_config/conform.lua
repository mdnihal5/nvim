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
		-- Fallback formatter for all other file types
		["*"] = { "prettier" }, -- Use Prettier for everything else
	},
	format_on_save = true, -- Enable format on save for all file types
})
