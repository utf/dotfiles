function mfagen_lbl
  echo (oathtool --totp -b (security find-generic-password -a $USER -s lbl_secret -w))
end
