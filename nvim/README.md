# Neovim Configuration (NvChad)

Minimal, performant NvChad setup optimized for quick edits of config files, scripts, and occasional coding.

## Features

- **VS Code Dark Theme** - Familiar look and feel
- **LSP Support** - Autocomplete and diagnostics for:
  - Bash scripts
  - Python
  - Go
  - Lua
  - YAML/JSON
- **Syntax Highlighting** - via Treesitter
- **File Tree** - nvim-tree on the left pane
- **Performance Optimized** - Disabled unnecessary plugins, fast startup

## Installation

### First Time Setup
```bash
cd ~/dotfiles
bash nvim/install.sh
```

### On New Computer
```bash
# After cloning dotfiles
cd ~/dotfiles
bash nvim/install.sh
```

## First Launch

1. Open nvim: `nvim`
2. Wait for plugins to install automatically
3. Run `:MasonInstallAll` to install LSP servers
4. Restart nvim

## Key Mappings

### General
- `Ctrl+n` - Toggle file tree
- `Ctrl+s` - Save file
- `<leader>fm` - Format code (leader = space)
- `<leader>ff` - Find files (fuzzy finder)
- `<leader>fw` - Find word (grep)

### LSP (when editing code)
- `gd` - Go to definition
- `K` - Show hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `[d` - Previous diagnostic
- `]d` - Next diagnostic

### Tabs/Buffers
- `Tab` - Next buffer
- `Shift+Tab` - Previous buffer
- `<leader>x` - Close buffer

## Configuration

All custom config is in `~/dotfiles/nvim/.config/nvim/lua/custom/`:
- `chadrc.lua` - Main settings
- `plugins.lua` - Plugin list
- `configs/overrides.lua` - LSP and plugin configs
- `configs/lspconfig.lua` - Language server setup
- `mappings.lua` - Keybindings

## Updating

```bash
# Update NvChad
cd ~/.config/nvim
git pull

# Update plugins
nvim
:Lazy sync
```

## Performance Notes

- Disabled which-key for faster startup
- Minimal statusline
- Lazy-loaded plugins
- Optimized completion settings
- No dashboard on startup
