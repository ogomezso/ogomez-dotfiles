---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "vscode_dark", -- VS Code dark theme
  transparency = false,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  statusline = {
    theme = "minimal",
  },
  tabufline = {
    enabled = true,
    lazyload = true,
  },
  nvdash = {
    load_on_startup = false, -- Faster startup
  },
}

return M
