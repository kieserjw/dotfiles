#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc" # vim zshrc oh-my-zsh"    # list of files/folders to symlink in homedir

##########

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    if [ -f ~/.$file ] && [ ! -d $olddir ];
    then
        echo "Creating $olddir for backup of any existing dotfiles in ~"
        mkdir -p $olddir
        echo "Moving any existing dotfiles from ~ to $olddir"
	    mv ~/.$file ~/dotfiles_old/
    
    elif [ -f ~/.$file ];
    then        
    	mv ~/.$file ~/dotfiles_old/
    fi
	echo "Creating symlink to $file in home directory."
	ln -s $dir/$file ~/.$file
done
