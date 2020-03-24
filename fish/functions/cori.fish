function cori
  set secret (mfagen)
  set pass (security find-generic-password -a $USER -s nersc_pass -w)
  sshpass -p$pass$secret ssh -Y alexg@cori.nersc.gov
end
