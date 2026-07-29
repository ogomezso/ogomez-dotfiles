platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ $unamestr == 'Darwin' ]]; then
  export HOMEBREW_AUTO_UPDATE_SECS=86400
  export HOMEBREW_NO_ENV_HINTS=1
fi
