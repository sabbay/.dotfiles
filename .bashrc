#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
setxkbmap -layout pl
alias fuck='sudo $(history -p \!\!)' 
alias apachestart='sudo systemctl start httpd.service'
alias loginpostgresql='sudo -i -u postgres'
lcd() { cd "$1"; ls;}
PS1='[\u@\h \W]\$ '
