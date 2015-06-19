#!/bin/sh
repo_dir=`pwd`
file_list=".vimrc .tigrc .gemrc"
for f in $file_list; do
  ln -s "$repo_dir/$f" ~
done
