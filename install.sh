#!/bin/bash


#####################
# this script  installs my dotfiles!!!!
#####################



############ variables

dir=~/dotfiles                                     # dotfiles dir
olddir=~/dotfiles_old                              # old dotfiles backup directory
files=".screenlayout/dual_left.sh .screenlayout/dual-monitor.sh .screenlayout/single.sh .screenlayout/triple.sh .scripts/volume.sh .scripts/brightness.py  .scripts/measure-net-speed-bash .scripts/select_display.sh .scripts/cur_playing.sh  .bashrc .vimrc .zshrc .config/clerk/config .config/i3/config .config/yabar/yabar.conf .spacemacs"                         #list of files/folders to symlink in homedir


############

#create dotfiles_old to backup current dotfiles in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir  -p $olddir
echo "...done!"


#move any existing dotfiles to dotfiles_old directory

for file in $files; do
    echo "Moving current $file to $olddir"
    mv ~/$file  $olddir
done

for file in $files; do
    echo "Copying of $file to the one in home directory"
    cp $dir/$file ~/$file
done



