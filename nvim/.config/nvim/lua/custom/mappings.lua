---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- File tree toggle
    ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvim-tree" },

    -- Save file
    ["<C-s>"] = { "<cmd> w <CR>", "Save file" },

    -- Format code
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },

  v = {
    -- Format selection
    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
  },
}

-- LSP mappings
M.lspconfig = {
  n = {
    ["gd"] = {
      function()
        vim.lsp.buf.definition()
      end,
      "LSP definition",
    },

    ["K"] = {
      function()
        vim.lsp.buf.hover()
      end,
      "LSP hover",
    },

    ["<leader>rn"] = {
      function()
        vim.lsp.buf.rename()
      end,
      "LSP rename",
    },

    ["<leader>ca"] = {
      function()
        vim.lsp.buf.code_action()
      end,
      "LSP code action",
    },

    ["[d"] = {
      function()
        vim.diagnostic.goto_prev()
      end,
      "Previous diagnostic",
    },

    ["]d"] = {
      function()
        vim.diagnostic.goto_next()
      end,
      "Next diagnostic",
    },
  },
}

return M
