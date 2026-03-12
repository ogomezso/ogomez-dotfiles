platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
elif [[ $unamestr == 'Darwin' ]]; then
fi
