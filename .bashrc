# ~/.bashrc

# change prompt for superuser
if [ `id -u` -eq 0 ]; then
  export PS1="# "
fi
