alias reload!="source ${HOME}/.bashrc"
alias tmux="tmux -2"
alias dut="du -h . --max-depth=1"
alias du="du -h"
alias STOP='echo "LSTOP = .TRUE." > STOPCAR'
alias ABORT='echo "LABORT = .TRUE." > STOPCAR'

if [[ "${platform}" == 'linux' ]]; then
  alias ls='ls --color'
elif [[ "${platform}" == 'osx' ]]; then
  alias ls='ls -G'
fi

if [[ -x "$(which mvim 2> /dev/null)" ]]; then
  alias vim='mvim -v'
else
  alias vim='vim -b'
fi
