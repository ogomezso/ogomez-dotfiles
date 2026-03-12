local M = {}

-- Mason: LSP installer
M.mason = {
  ensure_installed = {
    -- Language servers
    "bash-language-server",      -- Bash
    "pyright",                    -- Python
    "gopls",                      -- Go
    "lua-language-server",        -- Lua
    "yaml-language-server",       -- YAML
    "json-lsp",                   -- JSON

    -- Formatters
    "stylua",                     -- Lua
    "shfmt",                      -- Bash
    "black",                      -- Python
    "gofumpt",                    -- Go
  },
}

-- Treesitter: Syntax highlighting
M.treesitter = {
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

  highlight = {
    enable = true,
    use_languagetree = true,
  },

  indent = {
    enable = true,
  },
}

-- nvim-tree: File explorer
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },

  view = {
    side = "left",
    width = 30,
  },

  -- Performance: don't update on cursor hold
  update_focused_file = {
    enable = true,
    update_root = false,
  },
}

-- nvim-cmp: Autocompletion
M.cmp = function()
  local cmp = require "cmp"
  local opts = require "plugins.configs.cmp"

  -- Faster completion
  opts.performance = {
    debounce = 60,
    throttle = 30,
    fetching_timeout = 200,
  }

  -- Minimal menu
  opts.window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  }

  return opts
end

return M
