function lrc
  set secret (mfagen_lbl)
  set pass (security find-generic-password -a $USER -s lbl_pass -w)
  sshpass -p$pass$secret ssh -Y aganose@lrc-login.lbl.gov
end
