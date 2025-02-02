-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Clear search highlight
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Select all content in the file
vim.api.nvim_set_keymap("n", "<C-a>", "ggVG", { noremap = true, silent = true })

-- Copy selected text to system clipboard
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Manual formatting
vim.keymap.set("n", "<leader>F", function()
	require("conform").format()
end, { desc = "Manual format current buffer" })

-- Format selected range
vim.keymap.set("v", "<leader>rf", function()
	require("conform").format({ range = true })
end, { desc = "Format selected range" })

-- Format current buffer with F3
vim.keymap.set("n", "<F3>", function()
	require("conform").format()
end, { desc = "Format current buffer with F3" })

-- Keybinding for Telescope
vim.api.nvim_set_keymap("n", "<C-f>", ":Telescope find_files<CR>", { noremap = true, silent = true })

-- Manual format trigger
vim.keymap.set("n", "<leader>f", function()
	vim.lsp.buf.format({ async = true })
end, { desc = "Format current buffer" })
