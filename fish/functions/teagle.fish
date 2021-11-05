function teagle
  set secret (mfagen_nrel)
  set pass (security find-generic-password -a $USER -s nrel_pass -w)
  sshpass -p$pass$secret scp $argv[1] alexganose@eagle.nrel.gov:$argv[2]
end
