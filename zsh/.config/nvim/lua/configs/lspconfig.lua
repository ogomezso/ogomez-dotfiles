require("nvchad.configs.lspconfig").defaults()

-- Language servers for config files, bash, python, go
local servers = { "bashls", "pyright", "gopls", "lua_ls", "yamlls", "jsonls" }
vim.lsp.enable(servers)

-- Go-specific settings
vim.lsp.config.gopls = {
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
}

-- Python-specific settings
vim.lsp.config.pyright = {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic",
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
      },
    },
  },
} 
