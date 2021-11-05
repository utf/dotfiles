function eagle
  set secret (mfagen_nrel)
  set pass (security find-generic-password -a $USER -s nrel_pass -w)
  sshpass -p$pass$secret ssh -Y alexganose@eagle.nrel.gov
end
