require("lazy").setup({
  -- UI and Themes
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "ellisonleao/gruvbox.nvim", "dracula/vim", { "tanvirtin/monokai.nvim", name = "monokai" },
  "nvim-lualine/lualine.nvim", "nvim-tree/nvim-tree.lua", "nvim-tree/nvim-web-devicons",

  -- Syntax and Treesitter
  "nvim-treesitter/nvim-treesitter",  -- Syntax highlighting

  -- Git and Version Control
  "lewis6991/gitsigns.nvim", "tpope/vim-fugitive",  -- Git integration

  -- Utilities
  "tpope/vim-commentary", "tpope/vim-surround", "mattn/emmet-vim",
  "preservim/vimux", "christoomey/vim-tmux-navigator", "vim-test/vim-test", "stevearc/oil.nvim",

  -- LSP, Mason & Completion
  "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig",
  "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp", "L3MON4D3/LuaSnip", "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets",

  -- Copilot & Preview
  { "vinnymeller/swagger-preview.nvim", build = "npm install -g swagger-ui-watcher" },

  -- Telescope (fuzzy finder)
  { "nvim-telescope/telescope.nvim", tag = "0.1.4", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Formatter (using Neoformat)
  {
    "sbdchd/neoformat", 
    config = function()
      vim.g.neoformat_enabled_python = { "black" }
      vim.g.neoformat_enabled_javascript = { "prettier" }
      vim.g.neoformat_enabled_typescript = { "prettier" }
      vim.g.neoformat_enabled_html = { "prettier" }
      vim.g.neoformat_enabled_css = { "prettier" }
      vim.g.neoformat_enabled_json = { "prettier" }
    end
  },

  -- Null-ls setup for Prettier (optional)
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = { require("null-ls").builtins.formatting.prettier }
      })
    end
  },

  -- Noice plugin
  { "folke/noice.nvim", opts = {} },
})

