function tcori
  set secret (mfagen)
  set pass (security find-generic-password -a $USER -s nersc_pass -w)
  sshpass -p$pass$secret scp $1 alexg@cori.nersc.gov:$2
end
