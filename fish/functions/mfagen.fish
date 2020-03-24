function mfagen
  echo (oathtool --totp -b (security find-generic-password -a $USER -s nersc_secret -w))
end
