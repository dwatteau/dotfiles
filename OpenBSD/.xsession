#!/bin/sh
/usr/X11R6/bin/xset b off
/usr/X11R6/bin/xsetroot -solid \#444444
/usr/X11R6/bin/xterm &
exec fvwm
