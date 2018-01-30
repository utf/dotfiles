alias reload!="source ${HOME}/.bashrc"
alias tmux="tmux -2"
alias dut="du -h . --max-depth=1"
alias du="du -h"
alias STOP='echo "LSTOP = .TRUE." > STOPCAR'
alias ABORT='echo "LABORT = .TRUE." > STOPCAR'

if [[ "${platform}" == 'linux' ]]; then
  alias ls='ls --color'
elif [[ "${platform}" == 'freebsd' ]]; then
  alias ls='ls -G'
fi

if [[ -x "$(which mvim 2> /dev/null)" ]]; then
  alias vim='mvim -v'
else
  alias vim='vim -b'
fi

if [[ "${cluster}" == "ucl" ]]; then
  alias qsta="qstat -u '*'"

  if [[ -z $COMPNAME ]]; then
    echo "Variable COMPNAME not set in ~/.localrc"
    echo "backup utility will not work"
  else
    alias backup="rsync -avs -i ~/work/ archer:archive/$COMPNAME/work/ -h --exclude core.*"
  fi

  sub(){
   loc=$(pwd)
   for fol in $(find . -maxdepth $1 -mindepth $1 -type d); do
     cd $fol
     qsub job
     cd $loc
   done
  }

  go(){
   loc=$(\qstat -j $1 | grep cwd | awk '{ print $2 }')
   loc=${loc/#"/scratch/scratch/$USER"/"$HOME/work"}
   cd "$loc"
  }

  gi(){
   id=$(qstat | tail -n+3 | awk '{ printf $1" " }' | awk -v a=$1 '{ print $a }')
   go $id
  }
fi
