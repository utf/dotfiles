if [[ "${cluster}" == "mbp" ]]; then
  export PATH="${HOME}/bin:/usr/local/bin:/usr/local/sbin:$DPATH/bin:$PATH"
  export MANPATH="/usr/local/man:/usr/local/mysql/man:/usr/local/git/man:$MANPATH"
elif [[ "${cluster}" == "ucl" ]]; then
  export PATH="${HOME}/bin/tools:${HOME}/src/vaspup/bin:${PATH}"
  export PYTHONPATH=${HOME}/src/sauce:${PYTHONPATH}
  export VASP_PP_PATH="${HOME}/src/potentials/ase"
  export VASP_SCRIPT="${HOME}/src/sauce/scripts/run-vasp.py"

  export VASP_POTENTIALS="${HOME}/src/potentials/potpaw_PBE.54" # required by vaspup
  export FW_CONFIG_FILE="${HOME}/work/p999_atomate/atomate/config/FW_config.yaml"
fi
