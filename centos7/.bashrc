# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# direnv
eval "$(direnv hook bash)"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias g=git

source /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash
# NOTE: https://github.com/shikakun/tips/issues/55
complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
    || complete -o default -o nospace -F _git g
