# Dotfiles

My dotfiles. Running the bootstrap script on mac will also install default software including:

- Homebrew
- TextMate
- iTerm2
- Microsoft Office
- Visual Studio Code
- Slack
- Rectangle


## Installation

```
git clone git@github.com:utf/dotfiles.git
mv dotfiles .dotfiles
.dotfiles/bin/bootstrap
```

### MacOS

Add the following to `.zshrc`:

```
source ~/.zshrc.ext
```

### Linux

Add the following to `.bashrc`:

```
source ~/.bashrc.ext
```
