export CLICOLOR=true
export GREP_OPTIONS='--color=auto'
export EDITOR='vim'


SAVEHIST=10000
if [[ "${cluster}" != "archer" ]]; then
  # Archer2 disables these settings
  # for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
  HISTSIZE=10000
  # don't put duplicate lines or lines starting with space in the history.
  # See bash(1) for more options
  HISTCONTROL=ignoreboth
fi

if [[ -x "$(which dircolors 2> /dev/null)" ]]; then
  eval `dircolors ${HOME}/.dircolors`
elif [[ -x "$(which gdircolors 2> /dev/null)" ]]; then
  eval `gdircolors ${HOME}/.dircolors`
fi

if [[ "${platform}" == "linux" ]]; then
  shopt -s autocd
  # If set, the pattern "**" used in a pathname expansion context will
  # match all files and zero or more directories and subdirectories.
  shopt -s globstar
fi

shopt -s histverify
shopt -s histappend # adds history

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
shopt -s expand_aliases

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# makes default folder permission 755
umask 007

