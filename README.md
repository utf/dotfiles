Dotfiles
--------

My dotfiles.


Installation
-----------

For a smooth installation, this repository should be cloned recursively to ensure all submodules are also installed.

```
git clone --recursive git@github.com:utf/dotfiles.git
mv dotfiles .dotfiles
cd .dotfiles
rake
```

Add the following to `.bash_profile` (mac) or `.bashrc` (linux).
```
[[ -s ~/.bashrc.ext ]] && source ~/.bashrc.ext
```

To install all `vim` plugins, open vim, then type: `:VundleInstall`

Lastly, add the following to your ~/.localrc to configure the prompt (and the backup utilities):

```
COMPNAME=server_name
```
