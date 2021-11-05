function feagle
  set secret (mfagen_nrel)
  set pass (security find-generic-password -a $USER -s nrel_pass -w)
  sshpass -p$pass$secret scp alexganose@eagle.nrel.gov:$argv[1] $argv[2]
end
