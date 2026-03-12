# dotfiles

Personal dotfiles for MacOS, based on GNU Stow with XDG-compliant configuration structure.

## Requirements

### Programs

- Stow
- Git
- Zsh
- [Zap](https://github.com/zap-zsh/zap) (plugin manager for ZSH)
- [Ghostty](https://ghostty.org/) (GPU-accelerated terminal emulator)
- [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation) (Cross-shell prompt)

### Enhanced CLI Tools

- [eza](https://github.com/eza-community/eza) - Modern replacement for `ls`
- [bat](https://github.com/sharkdp/bat) - Cat clone with syntax highlighting
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [zoxide](https://github.com/ajeetdsouza/zoxide) - Smarter cd command

### Fonts

This configuration uses **JetBrainsMono Nerd Font**. Download it from [nerdfont](https://www.nerdfonts.com/) for proper icon rendering.

## Usage

### 1) Clone the project on $HOME (important!)

```bash
cd # Go home
git clone https://github.com/ogomezso/dotfiles.git # Clone repository
```

### 2) Use GNU Stow to create the symlinks automatically

```bash
cd ~/dotfiles # Go to dotfiles directory
stow */ # Create all symlinks
```

### 3) Customize Ghostty Configuration (Optional)

The Ghostty terminal configuration is located at `~/dotfiles/zsh/.config/ghostty/config`.

Key settings:
- **Font**: JetBrainsMono Nerd Font (size 16)
- **Theme**: Catppuccin Mocha
- **Keybindings**: Warp/iTerm2-style shortcuts

To change the font or theme, edit the config file and restart Ghostty.

## Features

### Shell Configuration

- XDG-compliant config structure under `~/.config/zsh/`
- Modular configuration files:
  - `0_plugins.zsh` - Zsh plugins via Zap
  - `1_aliases.zsh` - Custom aliases and functions
  - `2_homebrew.zsh` - Homebrew configuration
  - `3_hstr.zsh` - HSTR history search
  - `4_cc_dotfiles.zsh` - Claude Code integration
  - `5_starship.zsh` - Starship prompt
  - `6_enhanced_tools.zsh` - eza, bat, zoxide, fzf
  - `7_ghostty_claude.zsh` - Ghostty + Claude Code auto-split
  - `zzz_sdkman.zsh` - SDKMan initialization

### Custom Aliases

See `zsh/.config/zsh/1_aliases.zsh` for a full list. Highlights include:
- `gcpclaude` - GCloud authentication helper for Claude Vertex
- `claude-split` - Start Claude Code in a Ghostty split pane
- Docker management shortcuts
- Git shortcuts

### Ghostty Keybindings

- `cmd+t` - New tab
- `cmd+w` - Close window/tab
- `cmd+d` - New split (right)
- `cmd+shift+d` - New split (down)
- `cmd+k` - Clear screen
- `cmd++` / `cmd+-` - Increase/decrease font size
- `cmd+0` - Reset font size


