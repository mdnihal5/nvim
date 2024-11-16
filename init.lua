-- Disable Netrw (file explorer)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Lazy.nvim setup
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- Core Configurations
require("core.options")        -- General settings
require("core.keymaps")        -- Key bindings
require("core.plugins")        -- Plugin list and setup
require("core.plugin_config")  -- Plugin-specific configurations

-- Auto-format before save using Neoformat
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    vim.cmd("Neoformat")
  end,
})

