eval `dircolors ${HOME}/.dircolors`
export CLICOLOR=true

HISTSIZE=10000
SAVEHIST=10000

shopt histverify
shopt autcd

shopt histappend # adds history

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
shopt expand_aliases
