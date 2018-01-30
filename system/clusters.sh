if [[ "${cluster}" == "ucl" ]]; then
  export TERM="xterm"
  export NCORE=8
  source /shared/ucl/apps/bin/defmods
  module load python2 grace ghostscript texlive ruby
fi
