return {
  -- LSP Configuration
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Mason: LSP installer
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Language servers
        "bash-language-server",
        "pyright",
        "gopls",
        "lua-language-server",
        "yaml-language-server",
        "json-lsp",
        -- Formatters
        "stylua",
        "shfmt",
        "black",
        "gofumpt",
      },
    },
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "bash",
        "python",
        "go",
        "json",
        "yaml",
        "toml",
        "markdown",
      },
    },
  },

  -- Code formatter
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
}
