# .bashrc

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
alias ls='ls --color=auto'
alias ll='ls -lh'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias duh='du -h --max-depth=1'
alias dug='du -h --max-depth=1 | grep "[0-9]\S*G"'
alias dum='du -h --max-depth=1 | grep "[0-9]\S*M"'
alias insmod='sudo insmod'
alias rmmod='sudo rmmod'

# Start calculator with math support
alias bc='bc -l'

#tools
alias h='history'
alias j='jobs -l'
alias vi='vim'

#update if not on debian, then yum update
alias update='sudo apt-get update && sudo apt-get upgrade'
alias apt-get="sudo apt-get"

# become root 
alias root='sudo -i'
alias su='sudo -i'

# resume file download
alias wget='wget -c'

alias easygrep='grep -nIir --exclude=cscope.out'

alias gitdir='git config --get remote.origin.url'

if [ -f  ~/dotfiles/local_alias_list ]; then
    . ~/dotfiles/local_alias_list
fi

easyfind () {

if [ "$1" ]
then 
find . -iname "*$1*"
fi

}

