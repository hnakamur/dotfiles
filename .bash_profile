# ~/.bash_profile

# use simple prompt
export PS1="$ "

export PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export EDITOR=vim

ulimit -S -n 10240

# go
export GOPATH=~/go
export PATH=$GOPATH/bin:$PATH

# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

alias ll='ls -l'
alias vim='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias rmbak='find . -name "*~" | xargs rm'
alias be='bundle exec'
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

up() { local dir=''; for ((i=${1:-1};i;i--)); do dir=$dir../; done; cd $dir; }

# Docker
export DOCKER_HOST=tcp://localhost:4243
alias dl='docker ps -l -q'

# direnv
eval "$(direnv hook bash)"