# ~/.bashrc

alias ll='ls -l'
alias g=git
alias vi='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias rmbak='find . -name "*~" | xargs rm'
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

# Docker
export DOCKER_HOST=tcp://localhost:4243
alias dl='docker ps -l -q'

# change prompt for superuser
if [ `id -u` -eq 0 ]; then
  export PS1="# "
fi
