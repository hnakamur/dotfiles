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

if [ -f ~/.zshrc-work ]; then
  source ~/.zshrc-work
fi

function agvim () {
  vim $(ag $@ | peco --query "$LBUFFER" | awk -F : '{print "-c " $2 " " $1}')
}

function s() {
  ssh $(awk '
    tolower($1)=="host" {
      for (i=2; i<=NF; i++) {
        if ($i !~ "[*?]") {
          print $i
        }
      }
    }
  ' ~/.ssh/config | sort | peco)
}

# direnv
eval "$(direnv hook zsh)"

export DOCKER_HOST=tcp://192.168.59.103:2375
