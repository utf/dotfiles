#!/bin/bash
# Sets reasonable OS X defaults.
# Run ./set-defaults.sh and you'll be good to go.

# Hide the doc
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-delay -float 0

# Set trackpad speed to maximum
defaults write -g com.apple.trackpad.scaling 3

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Use AirDrop over every interface. srsly this should be a default.
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1

# Always open everything in Finder's list view. This is important.
defaults write com.apple.Finder FXPreferredViewStyle Nlsv

# Show the ~/Library folder.
chflags nohidden ~/Library

# Set the Finder prefs for showing a few different volumes on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Hide Safari's bookmark bar.
defaults write com.apple.Safari.plist ShowFavoritesBar -bool false

# Set up Safari for development.
defaults write com.apple.Safari.SandboxBroker ShowDevelopMenu -bool true
defaults write com.apple.Safari.plist IncludeDevelopMenu -bool true
defaults write com.apple.Safari.plist WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari.plist "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# if our hostname was changed by macOS, change it back
if [ "mba" != "$(scutil --get LocalHostName)" ]; then
  echo "Changing hostname."
  scutil --set LocalHostName mba
  scutil --set ComputerName mba
fi

# configure the dock
defaults write com.apple.dock persistent-apps -array
for dockItem in {/Applications/Safari,/System/Applications/{Messages,Mail,Calendar,Notes},/Applications/{"iTerm","Slack","TextMate"}}.app; do
  defaults write com.apple.dock persistent-apps -array-add '<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>'$(readlink -f $dockItem)'</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>'
done
killall Dock
