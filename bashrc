#! /usr/bin/bash
alias bc='bc -l'
alias cls='clear'
alias cp='cp -i'
alias down='sudo ifconfig en1 down'
alias fnogit='find . -name ".git*" \( -type d -o -type f \) -prune -o -print'
alias hh='vim ~/Dropbox/Apps/TaskAgent/HomeTodo.txt'
alias hist='history'
alias jj='vim ~/vimwiki/diary/`date "+%Y-%m-%d"`.wiki'
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
alias rename='rename -s'
alias rm='rm -i'
alias up='sudo ifconfig en1 up'
alias jci='git add . && git ci -m "update" && git push'

# toggle function keys
alias fon='defaults write ~/Library/Preferences/.GlobalPreferences.plist com.apple.keyboard.fnState -bool true'
alias foff='defaults write ~/Library/Preferences/.GlobalPreferences.plist com.apple.keyboard.fnState -bool false'

# git
alias g='git status'
alias gb='git branch'
alias gd='cls; git diff'
alias gdc='cls; git diff --cached'
alias gitup='cd `git rev-parse --show-toplevel`'
alias gitv='vim `git status --short | awk '"'"'{print $2}'"'"'`'
alias gl='cls; git log'
alias gsh='git show HEAD --name-only'
alias vg='vim -c "Gstatus"'

# other

# open wiki
alias ww='vim ~/vimwiki/index.wiki'

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
# PS1="[$MAGENTA\! $DARK_GREEN\u@\h $BLUE\w$NO_COLOR]\n\$ "
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/:\1/'
}
PS1="[$MAGENTA\! $DARK_GREEN\u@\h$NO_COLOR\$(parse_git_branch) $BLUE\w$NO_COLOR]\n\$ "

# default editor
export EDITOR=vim

# use vi mode from shell
set -o vi

# run CtrlP from commandline
alias v='vim -c CtrlP'
alias m='mvim -c CtrlP'

# CTRL-P menu completion (like zsh)
# haven't figured out how to do CTRL-N yet
bind '"":menu-complete'
bind '"":menu-complete-backward'

# save history across sessions
shopt -s histappend

## shell integration
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# shell integration; automatic profile switching
echo -e "\033]50;SetProfile=Default\a"

# functions

# start a countdown
function countdown() {
	SEC=$1
	for ((i=SEC; i>=0; i--)) ; do
		echo -ne "\r$i"
		sleep 1
	done
	say "Done"
	say "Done"
	say "Done"
}
