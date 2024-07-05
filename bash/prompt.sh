if [[ -z ${COMPNAME} ]]; then
  nickname="${COMPNAME}"
elif [[ "${cluster}" == "mbp" ]]; then
  nickname="mbp"
elif [[ "${cluster}" == "archer" ]]; then
  nickname="archer/$USER"
elif [[ "${cluster}" == "ucl" ]]; then
  nickname="ucl"
elif [[ "${cluster}" == "donut" ]]; then
  nickname="donut"
fi

export PS1="${nickname} in \w $ "
