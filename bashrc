#! /usr/bin/bash
alias bc='bc -l'
alias cls='clear'
alias cp='cp -i'
alias down='sudo ifconfig en1 down'
alias ff='find . -name'
alias gb='gradle build'
alias hh='vim ~/Dropbox/Apps/TaskAgent/HomeTodo.txt'
alias hist='history'
alias jj='vim ~/journal/log`date "+%Y-%m-%d"`.txt'
alias l.='ls -dF -G \.[a-zA-Z]*'
alias l.l='ls -dFl -G \.[a-zA-Z]*'
alias l1='ls -1'
alias l1='ls -1'
alias la='ls -aF -G'
alias ll.='ls -dFl -G \.[a-zA-Z]*'
alias ll='ls -l'
alias lla='ls -alF -G'
alias lld='ls -lF -G | grep ^d'
alias ls='ls -F -G'
alias lt='ls -ltr -G'
alias mv='mv -i'
alias rm='rm -i'
alias sshry='ssh ryumul.aka.corp.amazon.com'
alias up='sudo ifconfig en1 up'

# git
alias g='git status'
alias gd='git diff'
alias gitv='vim `git status --short | awk '"'"'{print $2}'"'"'`'

# other

# allow vim to be man pager
export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu' -c 'nnoremap i <nop>' -"

# PS1='\[\033[1;34m\][\! \u@\h \W]\$\[\033[0m\] '
NO_COLOR="\[\033[0m\]"
MAGENTA="\[\033[1;35m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GREEN="\[\033[1;32m\]"
DARK_GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
#PS1="[$MAGENTA\! $NO_COLOR\u@\h $YELLOW\w$NO_COLOR]\n\$ "
PS1="[$MAGENTA\! $DARK_GREEN\u@\h $YELLOW\w$NO_COLOR]\n\$ "

# use vi mode from shell
set -o vi

# easier entry into vim
alias v='vim'

# CTRL-P menu completion (like zsh)
# haven't figured out how to do CTRL-N yet
bind '"":menu-complete'

# save history across sessions
shopt -s histappend

## shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# shell integration; automatic profile switching
echo -e "\033]50;SetProfile=Default\a"

