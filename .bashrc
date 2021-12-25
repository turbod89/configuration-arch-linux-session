#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

[[ -f .profile ]] && source .profile

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
