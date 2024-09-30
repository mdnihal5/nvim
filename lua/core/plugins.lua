require("lazy").setup({
  -- Theme and UI
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  "ellisonleao/gruvbox.nvim",
  "dracula/vim",
  { "tanvirtin/monokai.nvim", name = "monokai" }, -- Correctly add Monokai Pro
  "nvim-lualine/lualine.nvim",          -- Statusline
  "nvim-tree/nvim-tree.lua",            -- File explorer
  "nvim-tree/nvim-web-devicons",        -- File icons

  -- Syntax and Treesitter
  "nvim-treesitter/nvim-treesitter",    -- Treesitter for syntax highlighting

  -- Git and Version Control
  "lewis6991/gitsigns.nvim",            -- Git signs
  "tpope/vim-fugitive",                 -- Git integration

  -- General Utilities
  "tpope/vim-commentary",               -- Commenting
  "tpope/vim-surround",                 -- Surround text with quotes/brackets/etc.
  "mattn/emmet-vim",                    -- Emmet for fast HTML/CSS
  "preservim/vimux",                    -- Integration with tmux
  "christoomey/vim-tmux-navigator",     -- Easy navigation in tmux
  "vim-test/vim-test",                  -- Test runner for different languages
  "stevearc/oil.nvim",                  -- File manager
    
  -- LSP and Mason setup
  "williamboman/mason.nvim",            -- LSP/DAP/Linters installer
  "williamboman/mason-lspconfig.nvim",  -- Bridges mason and lspconfig
  "neovim/nvim-lspconfig",              -- LSP configuration
  
  -- Completion
  "hrsh7th/nvim-cmp",                   -- Completion engine
  "hrsh7th/cmp-nvim-lsp",               -- LSP source for nvim-cmp
  "L3MON4D3/LuaSnip",                   -- Snippet engine
  "saadparwaiz1/cmp_luasnip",           -- LuaSnip completion source
  "rafamadriz/friendly-snippets",       -- Predefined snippets
  
  -- Copilot
  "github/copilot.vim",                 -- GitHub Copilot integration
  
  -- Markdown and API preview
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",    -- Run installation script after cloning
  },
  {
    "vinnymeller/swagger-preview.nvim",
    build = "npm install -g swagger-ui-watcher",  -- Global npm installation
  },

  -- Telescope (fuzzy finder)
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.4",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'stevearc/conform.nvim',
    opts = {},
  },
  {
    'folke/noice.nvim',
    opts = {},
  },
})

