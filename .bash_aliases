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
if [ -f /usr/share/bash-completion/completions/quilt ]; then
  alias dquilt="quilt --quiltrc=${HOME}/.quiltrc-dpkg"
  . /usr/share/bash-completion/completions/quilt
  complete -F _quilt_completion -o filenames dquilt
fi

# https://zenn.dev/tantan_tanuki/articles/4bb0fb249a26dd
alias zsysclean='zfs list -t snapshot | grep autozsys | awk '\''{print $1}'\'' | xargs -n1 sudo zfs destroy'

# print current network namespace
alias printns='ls -Li /var/run/netns/ | grep $(readlink /proc/self/ns/net | sed "s/^net:\[//;s/\]$//") | cut -d " " -f 2'

# open directory with explorer or URL with browser on WSL bash
if [ -f /mnt/c/Windows/System32/rundll32.exe ]; then
  alias open='/mnt/c/Windows/System32/rundll32.exe url.dll,FileProtocolHandler'
fi

# add user with specified password
alias addbuilduser='useradd -m -k /etc/skel -p "$(openssl passwd -6 mypassword)" -s /bin/bash build'

# create or update a symbolic link to ssh agent socket
alias linksshsock='ln -snf "$SSH_AUTH_SOCK" ~/.ssh/agent.sock'

# update ssh-agent socket environment variable to the symbolic link created with linksshsocket alias
alias updatesshsock='export SSH_AUTH_SOCK=$HOME/.ssh/agent.sock'

alias purgepkg="dpkg -l | grep ^.c | awk '{print \$2}' | xargs sudo apt purge -y"
