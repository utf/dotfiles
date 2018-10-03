if [[ "${cluster}" == "ucl" ]]; then
  export TERM="xterm"
  export NCORE=8
  source /shared/ucl/apps/bin/defmods
  module load python3 grace ghostscript texlive ruby

elif [[ "${cluster}" == "donut" ]]; then
  export DISPLAY="localhost:0.0"

elif [[ "${cluster}" == "nersc" ]]; then
  module load python/3.6-anaconda-5.2

fi
