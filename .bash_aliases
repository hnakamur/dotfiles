# NOTE: git completion for alias g=git
# https://github.com/shikakun/tips/issues/55
alias g=git
source /etc/bash_completion.d/git-prompt
source /usr/share/bash-completion/completions/git
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
	|| complete -o default -o nospace -F _git g

alias gg='git grep -I --line-number --no-index'

alias ghqget='ghq get --no-recursive'
