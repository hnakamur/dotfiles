update
upgrade

# Add Repository
# tap homebrew/versions
tap homebrew/binary
tap homebrew/dupes

# For cask
tap phinze/homebrew-cask
install brew-cask

install ctags
install direnv
install git
install jq
install hub
install mercurial
install openssl
install packer
install pwgen
install reattach-to-user-namespace
install the_silver_searcher
install tig
install tmux
install whois
install xz
install wget
install zsh --disable-etcdir

link --force openssl

# Use readline 6.2.4 instead of 6.3.3
# https://github.com/sstephenson/ruby-build/issues/550#issuecomment-41198679
uninstall readline
install https://raw.githubusercontent.com/Homebrew/homebrew/0181c8a1633353affefabe257c170edbd6d7c008/Library/Formula/readline.rb
link --force readline

cask install calibre
cask install firefox
#cask install gimp
cask install google-chrome
cask install google-japanese-ime
cask install grandperspective
cask install hipchat
#cask install inkscape
cask install iterm2
cask install java
cask install lightpaper
cask install keepassx
cask install kindle
cask install mysqlworkbench
cask install skype
cask install spark
cask install vagrant
cask install virtualbox
cask install webstorm
cask install zeroxed

cleanup
