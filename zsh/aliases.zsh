alias reload!='. ~/.zshrc'
alias tmux="tmux -2"

alias ls='ls --color=auto'

if [[ -x "$(which mvim)" ]]; then
  alias vim='mvim -v'
else
  alias vim='vim -b'
fi
