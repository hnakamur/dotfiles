
alias ll='ls -l'
alias vi='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias vim='reattach-to-user-namespace /Applications/MacVim.app/Contents/MacOS/Vim'
alias rmbak='find . -name "*~" | xargs rm'
alias airport=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport

# # Ubuntu 16.04
# # NOTE: git completion for alias g=git
# # https://github.com/shikakun/tips/issues/55
# alias g=git
# source /etc/bash_completion.d/git-prompt
# source /usr/share/bash-completion/completions/git
# complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
#          || complete -o default -o nospace -F _git g

# # CentOS 7
# # NOTE: git completion for alias g=git
# # https://github.com/shikakun/tips/issues/55
# alias g=git
# source /usr/share/doc/git-1.8.3.1/contrib/completion/git-prompt.sh
# source /usr/share/doc/git-1.8.3.1/contrib/completion/git-completion.bash
# complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
#          || complete -o default -o nospace -F _git g

# # FreeBSD
# # NOTE: git completion for alias g=git
# # https://github.com/shikakun/tips/issues/55
# source /usr/local/share/git-core/contrib/completion/git-prompt.sh
# source /usr/local/share/git-core/contrib/completion/git-completion.bash
# complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
#          || complete -o default -o nospace -F _git g

# # macOS + Homebrew
# # NOTE: git completion for alias g=git
# # https://github.com/shikakun/tips/issues/55
# alias g=git
# source /usr/local/Cellar/git/2.11.1/etc/bash_completion.d/git-completion.bash
# source /usr/local/Cellar/git/2.11.1/etc/bash_completion.d/git-prompt.sh
# complete -o bashdefault -o default -o nospace -F _git g 2>/dev/null \
#          || complete -o default -o nospace -F _git g

alias d=docker
alias dc=docker-compose
alias dm=docker-machine

# docker-machine setup
eval $(docker-machine env default)
# https://github.com/macvim-dev/macvim/issues/109#issuecomment-157336164
# You may need to run the following command when MacVim starts with no window
# defaults write org.vim.MacVim MMLoginShell -bool NO
