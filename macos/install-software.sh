#!/bin/sh
#
# This installs some of the common software available on Homebrew.

for soft in tmux reattach-to-user-namespace grc zsh-autosuggestions cmake gcc gfortran micromamba; do
  # only install if not already present
  brew list $soft >/dev/null 2>&1 || brew install $soft
done

if [[ ! -d "/Applications/Slack.app" ]]; then
  echo "  Installing Slack."
  brew install --cask slack
fi

if [[ ! -d "/Applications/TextMate.app" ]]; then
  echo "  Installing TextMate."
  brew install --cask textmate
fi

if [[ ! -d "/Applications/NordVPN.app" ]]; then
  echo "  Installing NordVPN."
  brew install --cask nordvpn
fi

if [[ ! -d "/Applications/Microsoft Word.app" ]]; then
  echo "  Installing Microsoft Word."
  brew install --cask microsoft-office
fi

if [[ ! -d "/Applications/iTerm.app" ]]; then
  echo "  Installing iTerm2."
  brew install --cask iterm2

  # install configuration file
  cp ../iterm/com.googlecode.iterm2.plist ~/Library/Preferences/com.googlecode.iterm2.plist
fi

if [[ ! -d "/Applications/Visual Studio Code.app" ]]; then
  echo "  Installing VS Code."
  brew install --cask visual-studio-code
fi

if [[ ! -d "/Applications/Hush.app" ]]; then
  echo "  Installing Hush."
  brew install --cask hush
fi

if [[ ! -d "/Applications/Rectangle.app" ]]; then
  echo "  Installing Rectangle."
  brew install --cask rectangle

  # install configuration file
  mkdir ~/Library/Application\ Support/Rectangle
  cp ../rectangle/RectangleConfig.json ~/Library/Application\ Support/Rectangle/RectangleConfig.json
  # launch rectangle for the first time and set permissions
  echo "  Launching Rectangle, make sure to configure the permissions."
  /Applications/Rectangle.app/Contents/MacOS/Rectangle
fi

if [[ $(micromamba env list | grep py3 -c) -eq 0 ]]; then
  echo "  Configuring micromamba."
  micromamba shell init --shell zsh --root-prefix=~/micromamba
  micromamba config append channels conda-forge
  micromamba config set channel_priority strict
  micromamba create -n py3 python=3.11
  micromamba activate py3
  micromamba config set changeps1 false
fi

exit 0
