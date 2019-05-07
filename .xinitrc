#!/bin/bash
xmodmap ~/.Xmodmap &
xscreensaver --no-splash &
xbindkeys &
xautolock -time 2 -locker i3lock &
