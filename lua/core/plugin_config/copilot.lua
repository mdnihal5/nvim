-- copilot.lua
vim.g.copilot_no_tab_map = true  -- Prevent default tab mapping

-- Mapping Ctrl-J to accept suggestions
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

-- Optional: Customize suggestion highlight
vim.cmd([[highlight CopilotSuggestion ctermfg=8 guifg=white guibg=#5c6370]])

