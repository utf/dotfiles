Dotfiles
--------

My dotfiles.


Installation
-----------

Clone recursively to ensure all submodules are also installed:

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

Open vim and run:
```
:VundleInstall
```

 Create a ~/.localrc file to configure the prompt:

```
COMPNAME=server_name
```
