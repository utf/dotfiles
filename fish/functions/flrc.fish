function flrc
  set secret (mfagen_lbl)
  set pass (security find-generic-password -a $USER -s lbl_pass -w)
  sshpass -p$pass$secret scp aganose@lrc-xfer.lbl.gov:$1 $2
end
