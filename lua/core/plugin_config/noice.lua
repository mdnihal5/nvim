require("noice").setup({
  -- Your noice configuration here
  lsp = {
    progress = {
      enabled = true,
      -- Custom formatters for lsp progress
      format = {
        { "formatting" },
        { "progress" },
      },
    },
  },
})

