#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='ja_JP.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  ~/bin
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi


# anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"

alias rmbak='find . -name "*~" | xargs rm'
alias be='bundle exec'

alias g='git'
alias v='reattach-to-user-namespace /usr/local/bin/vim'
alias vi='reattach-to-user-namespace /usr/local/bin/vim'
alias vim='reattach-to-user-namespace /usr/local/bin/vim'
alias ap='ansible-playbook -i ~/.ansible/hosts'

export ANSIBLE_HOSTS=~/.ansible/hosts

export DOCKER_HOST=tcp://localhost:4243

listenerprocess() {
  lsof -n -sTCP:LISTEN -iTCP:$1
}

# # config for MacTeX
# # % brew cask install mactex
# # ==> Caveats
# # To use mactex, zsh users may need to add the following line to their
# # ~/.zprofile.  (Among other effects, /usr/texbin will be added to the
# # PATH environment variable):
# eval `/usr/libexec/path_helper -s`
