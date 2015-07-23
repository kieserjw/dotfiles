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
alias ll='ls -lah'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias duh='du -h --max-depth=1'
alias dug='du -h --max-depth=1 | grep G'
alias dum='du -h --max-depth=1 | grep M'
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

# reboot / halt / poweroff
alias reboot='sudo /sbin/reboot'
alias poweroff='sudo /sbin/poweroff'
alias halt='sudo /sbin/halt'
alias shutdown='sudo /sbin/shutdown'

# resume file download
alias wget='wget -c'

alias vimmesg='sudo tail /var/log/messages'

alias grep='grep -nIir'

