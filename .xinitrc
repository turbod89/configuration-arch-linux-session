#!/bin/sh

# captures the X session pid, so it can be closed by
# command `kill $XSESSION_PID`
export XSESSION_PID="$$"

# Run xcompmgr in bg. It manages the transparencies and shadows
exec xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &


# choose the window manager
session=${1:-bspwm}

case $session in
    bspwm             ) sxhkd -m -1 & exec bspwm;;
    i3|i3wm           ) exec i3;;
    kde               ) exec startplasma-x11;;
    xfce|xfce4        ) exec startxfce4;;
    # No known session, try to run it as command
    *                 ) exec $1;;
esac
