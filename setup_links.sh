#!/bin/sh
repo_dir=`pwd`
file_list=".vimrc .tigrc"
for f in $file_list; do
  ln -s "$repo_dir/$f" ~
done
