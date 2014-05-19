#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

alias g='git'
alias v='reattach-to-user-namespace /usr/local/bin/vim'
alias vi='reattach-to-user-namespace /usr/local/bin/vim'
alias vim='reattach-to-user-namespace /usr/local/bin/vim'

export DOCKER_HOST=tcp://localhost:4243

listenerprocess() {
  lsof -n -sTCP:LISTEN -iTCP:$1
}
