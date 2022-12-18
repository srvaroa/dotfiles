#!/bin/bash
setxkbmap -option caps:escape
xscreensaver --no-splash &
xbindkeys &
xautolock -time 2 -locker i3lock -c 141414 &
