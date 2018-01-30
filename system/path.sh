if [[ "${cluster}" == "mbp" ]]; then
  export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:$DPATH/bin:$PATH"
  export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
elif [[ "${cluster}" == "ucl" ]]; then
  export PATH=${HOME}/bin/tools:${HOME}/bin/boltz:${PATH}
  export PYTHONPATH=${HOME}/bin/sauce:${PYTHONPATH}
  export VASP_PP_PATH="${HOME}/bin/cookbook/ase-potcars"
  export VASP_SCRIPT="${HOME}/bin/sauce/scripts/run-vasp.py"
  export FW_CONFIG_FILE=${HOME}/work/p999_atomate/atomate/config/FW_config.yaml
fi
