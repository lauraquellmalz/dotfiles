# Setup fzf
# ---------
if [[ ! "$PATH" == */home/laura/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/laura/.fzf/bin"
fi

source <(fzf --zsh)
