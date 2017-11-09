#! /bin/bash
# .bashrc

cd ~

# OS Specific aliases and functions

case "$(uname -s)" in

   Darwin)
     alias ls='ls -G'
     alias easygrep='grep -nIir --color=auto '
     ;;

   CYGWIN*|MINGW32*|MSYS*|Linux)
     alias ls='ls --color=auto'
     alias easygrep='grep -nIir --color=always'
     ;;

   *)
     echo 'what OS are you on?'
     ;;
esac

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

#files and folders
alias c='clear'
alias ll='ls -lh'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias duh='du -h -d 1'
alias dug='du -h -d 1 | grep "[0-9]G"'
alias dum='du -h -d 1 | grep "[0-9]M"'

# Start calculator with math support
alias bc='bc -l'

#tools
alias h='history'
alias j='jobs -l'
alias vi='vim'

#update if not on debian, then yum update
alias update='sudo apt-get update && sudo apt-get upgrade'
alias apt-get="sudo apt-get"

# resume file download
alias wget='wget -c'

alias giturl='git config --get remote.origin.url'

alias catpub='cat ~/.ssh/id_rsa.pub'

alias octal='stat -c "%a %n"'

alias beep='tput bel'
alias bell='tput bel'

if [ -f  ~/dotfiles/local_alias_list ]; then
    . ~/dotfiles/local_alias_list
fi

easyfind () {

if [ "$1" ]
then 
find . -iname "*$1*"
fi

}

export HISTSIZE=""
export HISTFILESIZE=""
