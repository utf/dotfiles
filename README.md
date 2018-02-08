Dotfiles
--------

My dotfiles.

On OS X, you will need to add the following to `.bash_profile`

```
[[ -s ~/.bashrc ]] && source ~/.bashrc
```

Installation
-----------

For a smooth installation, this repository should be cloned recursively to ensure all submodules are also installed.

```
git clone --recursive git@github.com:utf/dotfiles.git
mv dotfiles .dotfiles
cd .dotfiles
rake
```

To install all `vim` plugins, open vim, then type: `:VundleInstall`

Lastly, add the following to your ~/.localrc to configure the prompt (and the backup utilities):

```
COMPNAME=server_name
```

Requirements
------------

```
tmux 2.6+
flake8 (install by pip)
```
