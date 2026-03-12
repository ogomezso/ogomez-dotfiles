#!/bin/bash
# NvChad installation script

set -e

echo "🚀 Installing NvChad for Neovim..."

# Backup existing config if any
if [ -d "$HOME/.config/nvim" ]; then
  echo "⚠️  Backing up existing nvim config to ~/.config/nvim.backup"
  mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d_%H%M%S)"
fi

# Clone NvChad
echo "📦 Cloning NvChad..."
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Remove the example custom config
echo "🗑️  Removing default custom config..."
rm -rf ~/.config/nvim/lua/custom

# Stow the custom config
echo "🔗 Linking custom config from dotfiles..."
cd ~/dotfiles
stow nvim

echo "✅ NvChad installed successfully!"
echo ""
echo "📝 Next steps:"
echo "1. Run 'nvim' to start the initial setup"
echo "2. NvChad will install plugins on first launch"
echo "3. Run ':MasonInstallAll' to install all LSP servers"
echo ""
echo "⌨️  Key mappings:"
echo "  Ctrl+n        - Toggle file tree"
echo "  Ctrl+s        - Save file"
echo "  <leader>fm    - Format code"
echo "  gd            - Go to definition"
echo "  K             - Show documentation"
echo "  <leader>ca    - Code actions"
echo "  ]d / [d       - Next/previous diagnostic"
echo ""
echo "🎨 Theme: VS Code Dark (matches your VS Code setup)"
