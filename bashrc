#! /usr/bin/bash
alias bc='bc -l'
alias cls='clear'
alias cp='cp -i'
alias down='sudo ifconfig en1 down'
alias fd='find . -iname '
alias gb='gradle build'
alias hh='vim ~/Dropbox/Apps/TaskAgent/HomeTodo.txt'
alias hist='history'
alias jj='vim ~/journal/log`date "+%Y-%m-%d"`.txt'
alias jk='vim ~/journal-home/log`date "+%Y-%m-%d"`.txt'
alias l.='ls -dF -G \.[a-zA-Z]*'
alias l.l='ls -dFl -G \.[a-zA-Z]*'
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
alias up='sudo ifconfig en1 up'
alias vlast='vim `ls -t | head -n1`'
alias jci='git add . && git ci -m "update" && git push'

# git
alias g='git status'
alias gd='cls; git diff'
alias gitv='vim `git status --short | awk '"'"'{print $2}'"'"'`'

# other

# open wiki
alias jw='vim ~/vimwiki/index.wiki'

# allow vim to be man pager
export MANPAGER="col -b | vim -c 'set ft=man ts=8 nomod nolist nonu' -c 'nnoremap i <nop>' -"

# PS1='\[\033[1;34m\][\! \u@\h \W]\$\[\033[0m\] '
NO_COLOR="\[\033[0m\]"
MAGENTA="\[\033[1;35m\]"
WHITE="\[\033[1;37m\]"
LIGHT_GREEN="\[\033[1;32m\]"
DARK_GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[0;34m\]"
#PS1="[$MAGENTA\! $NO_COLOR\u@\h $YELLOW\w$NO_COLOR]\n\$ "
PS1="[$MAGENTA\! $DARK_GREEN\u@\h $BLUE\w$NO_COLOR]\n\$ "

# use vi mode from shell
set -o vi

# run CtrlP from commandline
alias v='vim -c CtrlP'

# CTRL-P menu completion (like zsh)
# haven't figured out how to do CTRL-N yet
bind '"":menu-complete'

# save history across sessions
shopt -s histappend

## shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# shell integration; automatic profile switching
echo -e "\033]50;SetProfile=Default\a"

