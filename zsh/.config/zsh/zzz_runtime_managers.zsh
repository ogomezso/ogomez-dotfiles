# This file must load last (zzz prefix) so SDKMAN/mise take priority in PATH
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(mise activate zsh)"