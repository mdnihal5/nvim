-- In your colorscheme.lua or init.lua
require('monokai').setup({
    palette = require('monokai').pro,  -- Use Monokai Pro palette
    transparent_background = true,     -- Enable transparent background
    italics = {
        comments = true,               -- Make comments italic
    },
})

vim.o.termguicolors = true
vim.o.background = "dark"
vim.cmd[[colorscheme monokai]]

