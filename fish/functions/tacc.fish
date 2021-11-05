function lrc
  set secret (mfagen_tacc)
  set pass (security find-generic-password -a $USER -s tacc_pass -w)
  sshpass -p$pass$secret ssh -Y aganose@lrc-login.lbl.gov
end
