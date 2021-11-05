function mfagen_nrel
  echo (oathtool --totp -b (security find-generic-password -a $USER -s nrel_secret -w))
end
