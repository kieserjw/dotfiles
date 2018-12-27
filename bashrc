#! /bin/bash
# .bashrc

cd ~

# OS Specific aliases and functions

case "$(uname -s)" in

   Darwin)
     alias ls='ls -G'
     alias easygrep='grep -nIir --color=auto'
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

alias tmuxa='tmux a -t 0'

git config --global grep.lineNumber true

if [ -f  ~/dotfiles/local_alias_list ]; then
    . ~/dotfiles/local_alias_list
fi

easyfind () {

if [ "$1" ]
then 
find . -iname "*$1*"
fi

}

export HISTSIZE=
export HISTFILESIZE=
export GOPATH="$HOME/go"

git --version 2>&1 >/dev/null
GIT_IS_AVAILABLE=$?
if [ $GIT_IS_AVAILABLE -eq 0 ]; then
    source ~/dotfiles/git-completion.bash
    alias gits='git status'
    alias gitd='git diff'
    alias gitc='git commit'
    alias gitb='git branch'
    alias gitl='git log'
    alias gitr='git reset --hard'
    alias gitaj="git add '*java'"
    alias gitf="git fetch -p --all" # prune branches
fi
