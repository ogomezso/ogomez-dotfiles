for config_file ($HOME/.config/zsh/*.zsh) source $config_file


# Load custom pre zsh config if exists
[ -d $HOME/.config/zsh/custom/pre_zsh ] && for config_file ($HOME/.config/zsh/custom/post_zsh/*.zsh) source $config_file

# history
HISTFILE=~/.zsh_history

# Load custom post zsh config if exists
[ -d $HOME/.config/zsh/custom/post_zsh ] && for config_file ($HOME/.config/zsh/custom/post_zsh/*.zsh) source $config_file


# Added by Windsurf
export PATH="/Users/ogomez/.codeium/windsurf/bin:$PATH"

# WarpStream
export PATH="/Users/ogomez/.warpstream:$PATH"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/ogomez/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
export PATH="$HOME/Library/Python/3.9/bin:$PATH"
