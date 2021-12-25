#!/bin/sh

alias ll='ls -la'

# tilix workarround. Source: https://gnunn1.github.io/tilix-web/manual/vteconfig/
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
  source /etc/profile.d/vte.sh
fi


# auto start ssh-agent
eval `ssh-agent -s`

# auto startX at logging
if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi
