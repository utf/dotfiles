function tcori
  set secret (mfagen)
  set pass (security find-generic-password -a $USER -s nersc_pass -w)
  sshpass -p$pass$secret scp $argv[1] alexg@cori.nersc.gov:$argv[2]
end
