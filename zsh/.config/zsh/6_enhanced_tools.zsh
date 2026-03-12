#!/bin/sh

# Zoxide (smarter cd)
if command -v zoxide &> /dev/null; then
    eval "$(zoxide init zsh)"
    alias cd="z"
fi

# Bat (better cat)
if command -v bat &> /dev/null; then
    alias cat="bat"
    export BAT_THEME="Catppuccin Mocha"
fi

# fd (better find) - already aliased through eza/fzf usually
# ripgrep - no special config needed, just use 'rg' instead of 'grep'
