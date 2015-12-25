
alias ll='ls -l'
alias g=git
alias vi='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias rmbak='find . -name "*~" | xargs rm'
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

alias d=docker
alias dc=docker-compose
alias dm=docker-machine

# docker-machine setup
eval $(docker-machine env default)
# https://github.com/macvim-dev/macvim/issues/109#issuecomment-157336164
# You may need to run the following command when MacVim starts with no window
# defaults write org.vim.MacVim MMLoginShell -bool NO
