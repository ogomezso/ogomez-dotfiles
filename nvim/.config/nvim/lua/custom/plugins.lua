local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  -- Override default configs
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  -- Install LSP servers
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  -- File tree
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Autocompletion
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,
  },

  -- Disabled plugins for better performance
  {
    "folke/which-key.nvim",
    enabled = false,
  },
}

return plugins
