function tlrc
  set secret (mfagen_lbl)
  set pass (security find-generic-password -a $USER -s lbl_pass -w)
  sshpass -p$pass$secret scp $1 aganose@lrc-xfer.lbl.gov:$2
end
