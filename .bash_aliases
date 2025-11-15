# NOTE: git completion for alias g=git
# https://askubuntu.com/a/642778
alias g=git
source /usr/share/bash-completion/completions/git
__git_complete g __git_main

alias gg='git grep -I --line-number --no-index'

alias ghqget='ghq get --no-recursive'

alias incusrsync='rsync -e fake-ssh'

alias timemem='/usr/bin/time -f "\nreal:%es %E\tuser:%Us\tsys:%Ss\tmaxRss:%MkB"'

# https://www.debian.org/doc/manuals/maint-guide/modify.en.html#quiltrc
alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
. /usr/share/bash-completion/completions/quilt
complete -F _quilt_completion -o filenames dquilt

# https://zenn.dev/tantan_tanuki/articles/4bb0fb249a26dd
alias zsysclean='zfs list -t snapshot | grep autozsys | awk '\''{print $1}'\'' | xargs -n1 sudo zfs destroy'

# print current network namespace
alias printns='ls -Li /var/run/netns/ | grep $(readlink /proc/self/ns/net | sed "s/^net:\[//;s/\]$//") | cut -d " " -f 2'
