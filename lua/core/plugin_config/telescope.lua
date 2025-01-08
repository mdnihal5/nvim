-- telescope.lua
require("telescope").setup({
	defaults = {
		file_ignore_patterns = { "node_modules/.*" }, -- Ignore node_modules during search
	},
})

local builtin = require("telescope.builtin")

-- Key bindings for Telescope
vim.keymap.set("n", "<c-p>", builtin.find_files, {})
vim.keymap.set("n", "<Space><Space>", builtin.oldfiles, {})
vim.keymap.set("n", "<Space>fg", builtin.live_grep, {})
vim.keymap.set("n", "<Space>fh", builtin.help_tags, {})
