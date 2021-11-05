function cx1
  set pass (security find-generic-password -a $USER -s imperial_pass -w)
  sshpass -p$pass ssh -Y aganose@login.cx1.hpc.imperial.ac.uk
end
