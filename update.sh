#!/bin/bash
#####################
# moves current dotfiles to dotfiles_old and links new ones from dotfiles
#####################

# variables
dir=~/dotfiles
olddir=~/dotfiles_old
files="config/i3/config"

echo "init"

mkdir -p $olddir

for file in $files; do
  mv ~/.$file ~/dotfiles_old/
  ln -s $dir/$file ~/.$file
done

echo "end"
