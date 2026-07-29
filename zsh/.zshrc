# Load custom pre zsh config if exists
[ -d $HOME/.config/zsh/custom/pre_zsh ] && for config_file ($HOME/.config/zsh/custom/pre_zsh/*.zsh) source $config_file

# Load main zsh config
for config_file ($HOME/.config/zsh/*.zsh) source $config_file

# Load custom post zsh config if exists
[ -d $HOME/.config/zsh/custom/post_zsh ] && for config_file ($HOME/.config/zsh/custom/post_zsh/*.zsh) source $config_file
