Dotfiles
--------

My dotfiles.


Installation
-----------

```
git clone git@github.com:utf/dotfiles.git
mv dotfiles .dotfiles
cd .dotfiles
rake
```

Add the following to `.bash_profile` (mac) or `.bashrc` (linux).

```
[[ -s ~/.bashrc.ext ]] && source ~/.bashrc.ext
```

Create a ~/.localrc file to configure the prompt:

```
COMPNAME=server_name
```
