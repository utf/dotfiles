alias reload!='source ~/.config/fish/config.fish'

if test -x (which mvim 2> /dev/null)
  alias vim='mvim -v'
else
  alias vim='vim -b'
end
