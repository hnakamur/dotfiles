#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles -boolean true
#defaults delete com.apple.finder AppleShowAllFiles

defaults write com.apple.desktopservices DSDontWriteNetworkStores true
#defaults delete com.apple.desktopservices DSDontWriteNetworkStores

killall Finder


defaults write com.apple.screencapture disable-shadow -bool true
#defaults delete com.apple.screencapture disable-shadow

killall SystemUIServer
