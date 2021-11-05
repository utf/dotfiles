function fdtn
  set secret (mfagen)
  set pass (security find-generic-password -a $USER -s nersc_pass -w)
  sshpass -p$pass$secret scp alexg@dtn03.nersc.gov:$argv[1] $argv[2]
end
