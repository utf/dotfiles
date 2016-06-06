autoload colors && colors

user_name() {
  echo "%{$fg[magenta]%}donut%{$reset_color%}"
}

directory_name() {
  echo "%{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}"
}

export PROMPT=$'\n$(user_name) in $(directory_name) › '

precmd() {
  title "zsh" "%m" "%55<...<%~"
}
