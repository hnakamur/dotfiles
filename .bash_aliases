# NOTE: git completion for alias g=git
# https://askubuntu.com/a/642778
alias g=git
source /usr/share/bash-completion/completions/git
__git_complete g __git_main

alias gg='git grep -I --line-number --no-index'

alias ghqget='ghq get --no-recursive'

# https://www.debian.org/doc/manuals/maint-guide/modify.en.html#quiltrc
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
. /usr/share/bash-completion/completions/quilt
complete -F _quilt_completion -o filenames dquilt
