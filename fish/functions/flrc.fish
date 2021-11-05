function flrc
  set secret (mfagen_lbl)
  set pass (security find-generic-password -a $USER -s lbl_pass -w)
  sshpass -p$pass$secret scp -r aganose@lrc-xfer.lbl.gov:$argv[1] $argv[2]
end
