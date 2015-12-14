
alias ll='ls -l'
alias g=git
alias vi='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias rmbak='find . -name "*~" | xargs rm'
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

alias d=docker
alias dc=docker-compose
alias dm=docker-machine
alias dpsclean='docker rm $(docker ps -a -q)'
alias dimgclean='docker rmi $(docker images -q -f dangling=true)'

# docker-machine setup
eval $(docker-machine env default)
