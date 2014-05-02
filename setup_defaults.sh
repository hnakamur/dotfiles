#!/bin/bash

defaults write com.apple.finder AppleShowAllFiles -boolean true
#defaults delete com.apple.finder AppleShowAllFiles

killall Finder


defaults write com.apple.screencapture disable-shadow -bool true
#defaults delete com.apple.screencapture disable-shadow

killall SystemUIServer
