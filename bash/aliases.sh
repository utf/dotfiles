alias reload!='source ~/.bashrc'
alias tmux="tmux -2"

alias ls="ls -G"

if [[ -x "$(which mvim)" ]]; then
  alias vim='mvim -v'
else
  alias vim='vim -b'
fi
