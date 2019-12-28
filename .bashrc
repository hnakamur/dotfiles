# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# direnv
eval "$(direnv hook bash)"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# NOTE: git completion for alias g=git for Ubuntu
# https://github.com/shikakun/tips/issues/55
alias g=git
source /etc/bash_completion.d/git-prompt
source /usr/share/bash-completion/completions/git
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
         || complete -o default -o nospace -F _git g
