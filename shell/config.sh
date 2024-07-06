alias tmux="tmux -2"
alias dut="du -h . --max-depth=1"
alias du="du -h"

if [[ "${platform}" == 'linux' ]]; then
  alias ls='ls --color'
elif [[ "${platform}" == 'osx' ]]; then
  alias ls='ls -G'
fi

export CLICOLOR=true
export GREP_OPTIONS='--color=auto'
export EDITOR='vim'


if [[ -x "$(which dircolors 2> /dev/null)" ]]; then
  eval `dircolors ${HOME}/.dircolors`
elif [[ -x "$(which gdircolors 2> /dev/null)" ]]; then
  eval `gdircolors ${HOME}/.dircolors`
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# makes default folder permission 755
umask 007
