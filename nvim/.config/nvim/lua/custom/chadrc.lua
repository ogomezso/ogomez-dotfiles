---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "vscode_dark", -- VS Code dark theme
  theme_toggle = { "vscode_dark", "vscode_light" },
  transparency = false,

  -- Disable statusline components for better performance
  statusline = {
    theme = "minimal",
  },

  -- Minimal tabufline
  tabufline = {
    enabled = true,
    lazyload = true,
  },

  -- Disable nvdash for faster startup
  nvdash = {
    load_on_startup = false,
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- Check mappings via :NvCheatsheet
M.mappings = require "custom.mappings"

return M
