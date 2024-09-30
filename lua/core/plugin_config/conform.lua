require("conform").setup({
  formatters_by_ft = {
    ["*"] = { "prettier" },
  },
  format_on_save = true, -- This will format the file on save
})
