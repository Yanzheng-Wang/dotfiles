# Setup fzf
# ---------
if [[ ! "$PATH" == */opt/homebrew/Cellar/fzf/0.65.1/bin* ]]; then
  PATH="${PATH:+${PATH}:}/opt/homebrew/Cellar/fzf/0.65.1/bin"
fi

source <(fzf --zsh)
